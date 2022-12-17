using AutoMapper;
using Business.Abstract;
using Business.Configuration.Extensions;
using Business.Configuration.Response;
using Business.Configuration.Validator.FluentValidation;
using DAL.Abstract;
using DTO.Payment;
using Models.Entities;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;

namespace Business.Concrete
{
    public class PaymentService : IPaymentService
    {
        private readonly IPaymentRepository _repository;
        private IMapper _mapper;

        public PaymentService(IPaymentRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public CommandResponse Delete(Payment payment)
        {
            _repository.Delete(payment);

            return new CommandResponse
            {
                Status = true,
                Message = $"Deleted Payment. "
            };
        }

        public IEnumerable<SearchPaymentResponse> GetAll()
        {
          
            var data = _repository.GetAll();
            var mappedData = data.Select(x => _mapper.Map<SearchPaymentResponse>(x)).ToList();
            return mappedData;
        }
        public IEnumerable<SearchPaymentResponse2> GetAllForReport()
        {
            var data = _repository.GetAll();
            var mappedData = data.Select(x => _mapper.Map<SearchPaymentResponse2>(x)).ToList();
            return mappedData;
        }

        public CommandResponse Insert(CreatePaymentRequest request)
        {
            //Validation

            var validator = new CreatePaymentRequestValidator();
            validator.Validate(request).ThrowIfException();//ValidatorExtension

            // _repository.Insert(payment);

            var entity = _mapper.Map<Payment>(request);//Automapper

            _repository.Insert(entity);

            return new CommandResponse
            {
                Status = true,
                Message = $"Added Payment. "
            };
        }

        public CommandResponse Update(UpdatePaymentRequest request)
        {
            //_repository.Update(request);
            var validator = new UpdatePaymentRequestValidator();
            validator.Validate(request).ThrowIfException();//ValidatorExtension

            var entity = _repository.Get(request.Id);

            if (entity == null)
            {
                return new CommandResponse()
                {
                    Status = false,
                    Message = "Id couldn't found!"
                };
            }

            var mappedEntity = _mapper.Map(request, entity);

            _repository.Update(mappedEntity);

            return new CommandResponse
            {
                Status = true,
                Message = $"Updated Payment. "
            };
        }
    }
}
