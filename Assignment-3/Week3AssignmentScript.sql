USE [Test]
GO
/****** Object:  Table [dbo].[CevapTipiSecenekleri]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CevapTipiSecenekleri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[CevapTipiId] [int] NULL,
	[Durumu] [int] NULL,
 CONSTRAINT [PK_Cevap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CevapTipleri]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CevapTipleri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](255) NULL,
	[Durumu] [int] NULL,
 CONSTRAINT [PK_Cevaplar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[CevapTipiveSecenekler]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[CevapTipiveSecenekler] 
(	
	
)
RETURNS TABLE 
AS
RETURN 
(
	
	SELECT 
	ct.Adi,
	cts.Durumu
	FROM CevapTipleri ct
	inner join CevapTipiSecenekleri cts on ct.Id=cts.Id
)
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Durumu] [int] NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciBilgileri]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciBilgileri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[EMail] [nvarchar](50) NULL,
	[OkulId] [int] NULL,
	[SinifId] [int] NULL,
	[Cinsiyet] [nvarchar](50) NULL,
	[DogumTarihi] [nvarchar](50) NULL,
	[KullanicilarId] [int] NULL,
	[Durumu] [int] NULL,
 CONSTRAINT [PK_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NULL,
	[KullaniciSifre] [nvarchar](50) NULL,
	[RolId] [int] NOT NULL,
 CONSTRAINT [PK_Sifre] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Okul]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Okul](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](255) NULL,
	[Il] [nvarchar](255) NULL,
	[Ilce] [nvarchar](255) NULL,
	[Durumu] [int] NULL,
 CONSTRAINT [PK_Okul] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]   Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](255) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sinif]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinif](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](255) NULL,
	[OkulId] [int] NULL,
	[Durumu] [int] NULL,
 CONSTRAINT [PK_Sinif] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sonuclar]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sonuclar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TestId] [int] NULL,
	[CozmeSayisi] [int] NOT NULL,
	[Tarih] [nvarchar](50) NULL,
	[TestSonucOzellikId] [int] NULL,
	[Puani] [int] NOT NULL,
	[Yuzde] [int] NULL,
	[KullaniciBilgileriId] [int] NULL,
 CONSTRAINT [PK_Sonuclar1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Soru]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soru](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](500) NULL,
	[TestId] [int] NULL,
	[Durumu] [int] NULL,
	[KayitTarihi] [nvarchar](50) NULL,
	[GuncellenmeTarihi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sorular] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](255) NULL,
	[Aciklama] [nvarchar](255) NULL,
	[Fiyat] [nvarchar](50) NULL,
	[CevapTipiId] [int] NULL,
	[KategoriId] [int] NULL,
	[Durumu] [int] NULL,
 CONSTRAINT [PK_Test] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestSonucOzellik]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestSonucOzellik](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TestId] [int] NULL,
	[Adi] [nvarchar](max) NULL,
	[Aciklama] [nvarchar](max) NULL,
	[Durumu] [int] NULL,
 CONSTRAINT [PK_TestSonucOzelligi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestSonucOzellikTurleri]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestSonucOzellikTurleri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TestSonucOzellikId] [int] NULL,
	[Adi] [nvarchar](max) NULL,
	[Aciklama] [nvarchar](max) NULL,
	[Durumu] [int] NULL,
 CONSTRAINT [PK_TestSonucOzellikTurleri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestSorusuCevabi]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestSorusuCevabi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TestId] [int] NULL,
	[SoruId] [int] NULL,
	[TestSonucOzellikId] [int] NULL,
	[CevapTipiSecenekleriId] [int] NULL,
	[SecenekPuani] [int] NOT NULL,
	[Durumu] [int] NULL,
 CONSTRAINT [PK_TestSorusuCevabı] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VerilenCevaplar]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VerilenCevaplar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciBilgileriId] [int] NULL,
	[TestId] [int] NULL,
	[SoruId] [int] NULL,
	[CevapTipiId] [int] NULL,
	[CevapTipiSecenekleriId] [int] NULL,
	[KullaniciCevabi] [nvarchar](50) NULL,
	[KayitTarihi] [nvarchar](50) NULL,
	[BaslamaTarihi] [nvarchar](50) NULL,
	[BitisTarihi] [nvarchar](50) NULL,
	[Durumu] [int] NULL,
 CONSTRAINT [PK_CevapKayitlari] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yuzde]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yuzde](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TestSonucOzellikId] [int] NULL,
	[Yuzdesi] [int] NULL,
	[Aciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_Yuzde] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CevapTipiSecenekleri] ON 

INSERT [dbo].[CevapTipiSecenekleri] ([Id], [Adi], [CevapTipiId], [Durumu]) VALUES (1, N'Evet', 3, 1)
INSERT [dbo].[CevapTipiSecenekleri] ([Id], [Adi], [CevapTipiId], [Durumu]) VALUES (2, N'Hayır', 3, 1)
INSERT [dbo].[CevapTipiSecenekleri] ([Id], [Adi], [CevapTipiId], [Durumu]) VALUES (3, N'Doğru', 5, 1)
INSERT [dbo].[CevapTipiSecenekleri] ([Id], [Adi], [CevapTipiId], [Durumu]) VALUES (4, N'Yanlış', 5, 1)
INSERT [dbo].[CevapTipiSecenekleri] ([Id], [Adi], [CevapTipiId], [Durumu]) VALUES (14, N'Sık Sık', 7, 1)
INSERT [dbo].[CevapTipiSecenekleri] ([Id], [Adi], [CevapTipiId], [Durumu]) VALUES (15, N'Bazen', 7, 1)
INSERT [dbo].[CevapTipiSecenekleri] ([Id], [Adi], [CevapTipiId], [Durumu]) VALUES (16, N'Hiçbir Zaman', 7, 1)
SET IDENTITY_INSERT [dbo].[CevapTipiSecenekleri] OFF
GO
SET IDENTITY_INSERT [dbo].[CevapTipleri] ON 

INSERT [dbo].[CevapTipleri] ([Id], [Adi], [Durumu]) VALUES (3, N'İkili-(Evet/Hayır)', 1)
INSERT [dbo].[CevapTipleri] ([Id], [Adi], [Durumu]) VALUES (5, N'İkili-(Doğru/Yanlış)', 1)
INSERT [dbo].[CevapTipleri] ([Id], [Adi], [Durumu]) VALUES (7, N'StresDüzeyiTestiİiçin', 1)
SET IDENTITY_INSERT [dbo].[CevapTipleri] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([Id], [Adi], [Durumu]) VALUES (1, N'Zihinsel Gelişim', 1)
INSERT [dbo].[Kategori] ([Id], [Adi], [Durumu]) VALUES (2, N'Kişisel Gelişim', 1)
INSERT [dbo].[Kategori] ([Id], [Adi], [Durumu]) VALUES (5, N'Duygusal', 1)
SET IDENTITY_INSERT [dbo].[Kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[KullaniciBilgileri] ON 

INSERT [dbo].[KullaniciBilgileri] ([Id], [Adi], [Soyadi], [EMail], [OkulId], [SinifId], [Cinsiyet], [DogumTarihi], [KullanicilarId], [Durumu]) VALUES (20, N'Dahi', N'Gelişim', N'ADMİN', NULL, NULL, N'Erkek', N'2001-03-03', 18, 1)
INSERT [dbo].[KullaniciBilgileri] ([Id], [Adi], [Soyadi], [EMail], [OkulId], [SinifId], [Cinsiyet], [DogumTarihi], [KullanicilarId], [Durumu]) VALUES (26, N'Ahmet', N'Bozdemir', N'ahmet@gmail.com', NULL, NULL, N'Erkek', N'2001-03-03', 24, 1)
SET IDENTITY_INSERT [dbo].[KullaniciBilgileri] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 

INSERT [dbo].[Kullanicilar] ([Id], [KullaniciAdi], [KullaniciSifre], [RolId]) VALUES (18, N'a', N'a', 1)
INSERT [dbo].[Kullanicilar] ([Id], [KullaniciAdi], [KullaniciSifre], [RolId]) VALUES (24, N'az', N'az', 5)
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
GO
SET IDENTITY_INSERT [dbo].[Okul] ON 

INSERT [dbo].[Okul] ([Id], [Adi], [Il], [Ilce], [Durumu]) VALUES (1, N'Lokman Hekim Mesleki Ve Teknik Anadolu Lisesi', N'Mersin', N'Bozyazı', 1)
INSERT [dbo].[Okul] ([Id], [Adi], [Il], [Ilce], [Durumu]) VALUES (2, N'Anamur Mesleki Ve Teknik Anadolu Lisesi', N'Mersin', N'Anamur', 1)
SET IDENTITY_INSERT [dbo].[Okul] OFF
GO
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([Id], [Adi]) VALUES (1, N'Admin')
INSERT [dbo].[Rol] ([Id], [Adi]) VALUES (2, N'Müdür')
INSERT [dbo].[Rol] ([Id], [Adi]) VALUES (3, N'Ögretmen')
INSERT [dbo].[Rol] ([Id], [Adi]) VALUES (4, N'Ögrenci')
INSERT [dbo].[Rol] ([Id], [Adi]) VALUES (5, N'Müşteri')
SET IDENTITY_INSERT [dbo].[Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[Sinif] ON 

INSERT [dbo].[Sinif] ([Id], [Adi], [OkulId], [Durumu]) VALUES (1, N'9/D', 2, 1)
INSERT [dbo].[Sinif] ([Id], [Adi], [OkulId], [Durumu]) VALUES (2, N'9/A', 2, 1)
INSERT [dbo].[Sinif] ([Id], [Adi], [OkulId], [Durumu]) VALUES (3, N'12/A', 1, 1)
INSERT [dbo].[Sinif] ([Id], [Adi], [OkulId], [Durumu]) VALUES (4, N'9/B', 1, 1)
SET IDENTITY_INSERT [dbo].[Sinif] OFF
GO
SET IDENTITY_INSERT [dbo].[Soru] ON 

INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1058, N'Biri bana ders verir gibi bir şeyler anlatırsa başka dünyalara dalarım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1059, N' Kendi kendime konuşurum', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1060, N'Boş bir kâğıda sütunlar çizmem istendiğinde kâğıdı katlarım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1061, N'Temiz ve düzenli bir sıraya sahip olmak isterim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1062, N'Bütün yanlışlarımı öğretmenin anlatarak düzeltmesini isterim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1063, N' Ellerimi kullanabileceğim bir şeyler yapmaktan hoşlanırım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1064, N' Sözel yönergeleri kullanamam, haritaya gereksinim duyarım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1065, N'Okurken parmağımla takip ederim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1066, N'Sandalyede otururken sallanırım ya da bacağımı sallarım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1067, N'Duyduğum ama görmediğim yönergelere dikkat etmekte zorlanırım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1068, N'Sınıfta arkadaşlarımla tartışarak ve sohbet ederek öğrenmeyi severim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1069, N'Defterimin içini genellikle resimlerle, şekillerle süslerim, karalama yaparım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1070, N'Resimli bulmaca çözmeyi severim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1071, N'Okurken kâğıda çok yaklaşırım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1072, N' Kalemimi elimde döndürürüm, masada tempo tutarım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1073, N'Sessiz okumayı severim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1074, N'Gözlerimi ellerime dayarım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1075, N'Öğretmenlerim asla çalışmadığımı düşünürler', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1076, N' Sözcükleri hatasız yazarım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1077, N'Daha iyi öğrenmek için müzik ve ritmi severim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1078, N'Öğretmenlerim sınıfta çok fazla hareket ettiğimi düşünürler', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1079, N'Gördüklerimi iyi hatırlarım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1080, N' Sınıfta çok fazla konuşurum', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1081, N'Genellikle hiperaktif olduğum söylenir', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1082, N'Olaylar ve/ya konular şematize edilirse daha iyi anlarım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1083, N'Boş zamanlarımda arkadaşlarımla konuşmayı ve şaka yapmayı severim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1084, N'Çalışırken sık sık ara verir, başka şeyler yaparım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1085, N'Konuşmacının ağzını izlerim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1086, N'Genellikle grafikler, sembol ve simgeler benim öğrenmemi kolaylaştırmaz', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1087, N'Arkadaşlarıma el şakası yapmaya bayılırım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1088, N'Resimli roman okumayı severim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1089, N'Yüksek sesle okumayı severim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1090, N'Kapının üst çerçevesine asılarak odaya atlamak isterim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1091, N'Şarkı sözlerini hatırlamakta zorlanırım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1092, N'Yazılı karikatürleri tercih ederim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1093, N'Aktif olarak katıldığım etkinlikleri severim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1094, N'Okunmakta olan bir metnin kopyasını takip etmezsem anlamakta zorlanırım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1095, N'Hikâye, şiir ve/ya kitap kasetleri dinlemeyi severim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1096, N'Bir şeyi görmek ya da duymak yetmez, dokunmak isterim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1097, N'Sözel tariflerin tekrarlanmasını isterim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1098, N'Anlatmayı yazmaya tercih ederim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1099, N'Her şeye dokunmak isterim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1100, N'Kendi kendime düşünüp, çalışarak öğrenmeyi severim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1101, N'Görsel ve sözcük hatırlama hafızam iyi değildir.', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1102, N'Objeleri biriktirmeyi severim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1103, N'Derslerde not tutmayı tercih ederim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1104, N'Kendi kendime çalışmaktansa öğretmeni dinleyerek öğrenmeyi tercih ederim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1105, N'Sınıfta tahta silmeyi, pencere ya da kapı açıp kapatmayı hep ben yapmak isterim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1106, N'Boş zamanlarımda okumayı severim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1107, N'Bir konu bana okunursa kendi okuduğumdan daha iyi anlarım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1108, N'Kürdanları, kibritleri küçük küçük parçalara ayırırım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1109, N'Başkalarının ne yaptığını gözlerim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1110, N'Kopyalanacak bir şey olmadan kolay çizemem', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1111, N'Aletleri açar, içini söker, sonra yine bir araya getirmeye çalışırım', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1112, N'Radyo ve televizyonu yüksek sesle dinlerim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1113, N'Haritalardan çok sözel tarifleri ve yönergeleri tercih ederim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1114, N'Genellikle ellerimi kullanarak ve hızlı konuşurum', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1115, N'Telefonda konuşmayı sevmem, yüz yüze konuşmayı tercih ederim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1116, N'Sessizliğe dayanamam ya ben ya da diğerlerinin konuşmasını isterim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1117, N'Başkalarının sözünü sık sık keserim', 3, 1, N'22.02.2022', N'22.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1119, N'Gözlerimden Rahatsızım. ', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1120, N'Kulaklarımdan Rahatsızım.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1121, N'Sık Sık Başım Ağrıyor.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1122, N'Başım  Dönüyor,Baygınlık Geçiriyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1123, N'Dişlerimden Rahatsızım', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1124, N'Halsiz Ve İştahsızım.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1125, N'İyi Beslenemiyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1126, N'Okulumuz Temiz Değil.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1127, N'Sınıfımız Çok Kalabalık Ve Gürültülü.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1128, N'Ders Araçlarımız Yeterli Değil.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1129, N'Spor Tesisleri,Spor Faaliyetleri Yeterli Değil.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1130, N'Okulda Disiplin Çok Sıkı.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1131, N'Sosyal Faaliyetler Çok Az.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1132, N'Ders Programları İyi Ayarlanmıyor.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1133, N'Ders Konuları Çok Ağır.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1134, N'Dersler İlgi Çekici Hale Getirilmiyor.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1135, N'Derslere Çok Fazla Çalıştığım Halde Başarılı Olamıyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1136, N'Yazılı Sınavlarda,Zaman Sorulara Göre Ayarlanmıyor.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1137, N'İlk ve orta okulda zayıf almıştım.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1138, N'Bu Okullardan Nefret Ediyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1139, N'Okul İdaresi Ve Öğretmenler Bana Karşı Anlayışlı Değiller.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1140, N'Öğretmenlerimiz Bizimle Yeteri Kadar İlgilenmiyorlar.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1141, N'Öğretmenlerimiz Kırıcı Söz Ve Hakaretlerde Bulunuyorlar.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1142, N'Öğretmenlerimiz Gereğinden Fazla Ev Ödevi Veriyorlar.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1143, N'Öğretmenlerimiz Bizim Neden Başarısız Olduğumuzu Araştırmıyorlar.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1144, N'Verimli Ders Çalışma Yollarını Bilmiyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1145, N'Ailemin Bana Karşı Olan Fazlaca Baskısı Beni Çok Sıkıyor.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1146, N'Ailem, Bana Karşı Anlayışsız Ve Güvensiz Buluyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1147, N'Ailemin Bilgisizliğine Üzülüyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1148, N'Annem Ve Babamın Bana Karşı Olan Fazlaca İlgileri Beni Sıkıyor.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1149, N'Ailem Bana Masraflarım İçin Çok Az Harçlık Veriyor.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1150, N'Ailem Kardeşler Arasında Ayrım Yapıyor.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1151, N'Ailemden Dayak Yiyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1152, N'Ailemin Geçimini Sağlamak İçin Bir İşte Çalışıyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1153, N'Başkaları İle İyi İlişkiler Kuramıyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1154, N'Çok Çekingenim.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1155, N'Şimdiye Kadar Bana Uygun Bir Arkadaş Bulamadım.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1156, N'Topluluk İçinde Nasıl Hareket Edeceğimi Bilmiyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1157, N'Başkalarına Güvenemiyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
GO
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1158, N'Herkes Benim Geçimsiz Biri Olduğumu Düşünüyor.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1159, N'Toplulukta Herkesin Benimle İlgilenmesini İstiyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1160, N'Meslek Seçiminde Güçlük Çekiyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1161, N'Geleceğim Konusunda Ailemle Anlaşamıyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1162, N'Üniversite Sınavını Kazanamayacağım Korkusu İçindeyim.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1163, N'Kısa Zamanda Bir Mesleğe Atılmak İstiyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1164, N'Ailem Benim Bir Üst Öğrenime Devam Etmemi İstemiyor.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1165, N'Çok Sinirliyim.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1166, N'Evhamlı Ve Kaprisliyim.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1167, N'Kendimi Yalnız Hissediyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1168, N'Utangacım.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1169, N'Çabuk Heyecanlanıyorum', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1170, N'Sıkıntı Ve Bunalım İçindeyim.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1171, N'İnsanları Sevmiyorum.', 14, 1, N'28.02.2022', N'28.02.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1172, N'Sınıftaki durumunla ilgili olarak (Örneğin, derslerinde başarılı olmak, sınıfı geçebilmek gibi konularda) endişeli ve huzursuz musunuz?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1173, N'Hasta olduğun için okula gelmediğin oldu mu?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1174, N'Bugüne kadar çok ağır bir hastalık geçirdin mi?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1175, N'Başın ağrır mı?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1176, N'Sabahları kendini yorgun hisseder misin?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1177, N'Gözlerinde bir bozukluk var mı?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1178, N'Sinirli bir çocuk musun?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1179, N'Görünüşün seni rahatsız ediyor mu? (Şişmanlığın veya zayıflığın, boyunun uzunluğu veya kısalığı)', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1180, N'Enerjik ve hareketli olmayı çok ister misin?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1181, N'Diğer çocuklara kıyasla daha kolay üşütür ve hastalanır mısın?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1182, N'Uyumakta güçlük çeker misin?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1183, N'Yatağını ıslatır mısın?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1184, N'Midende rahatsızlık hisseder misin?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1185, N'Yemek yemeyi istemediğin olur mu?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1186, N'Kolayca ağlar mısın?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1187, N'Hastalanırsam diye endişelenir misin?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1188, N'Olmayı istediğin kadar kuvvetli ve sağlıklı mısın?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1189, N'Kendini beceriksiz ve hantal hisseder misin?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1190, N'Çevrendeki olaylar seni endişelendirir mi?', 16, 1, N'3.03.2022', N'3.03.2022')
INSERT [dbo].[Soru] ([Id], [Adi], [TestId], [Durumu], [KayitTarihi], [GuncellenmeTarihi]) VALUES (1191, N'Kendini istediğini yapabilecek kadar güçlü hisseder misin?', 16, 1, N'3.03.2022', N'3.03.2022')
SET IDENTITY_INSERT [dbo].[Soru] OFF
GO
SET IDENTITY_INSERT [dbo].[Test] ON 

INSERT [dbo].[Test] ([Id], [Adi], [Aciklama], [Fiyat], [CevapTipiId], [KategoriId], [Durumu]) VALUES (3, N'Öğrenme Stilleri Testi', N'Her bireyin kendine özgü öğrenme tarzı olduğunu biliyor muydun? Peki, hangi öğrenme stili sana hitap ediyor biliyor musun? Üç farklı öğrenme stili var ve kendi stilini bulmak için aşağıdaki öğrenme stili testi sana yardımcı olabilir.', N'70', 3, 1, 1)
INSERT [dbo].[Test] ([Id], [Adi], [Aciklama], [Fiyat], [CevapTipiId], [KategoriId], [Durumu]) VALUES (14, N'Problem Tarama Envanteri', N'Sevgili öğrenciler,bu problem tarama listesi siz öğrencilerimizin belli başlı üzüntülerini,ihtiyaçlarını ve her türlü problemlerini öğrenip,sizlere yardımcı olmak için hazırlanmıştır. Sizi ilgilendiren soruya Evet İlgilendirmeyene Hayır Koyunuz. ', N'50', 5, 2, 1)
INSERT [dbo].[Test] ([Id], [Adi], [Aciklama], [Fiyat], [CevapTipiId], [KategoriId], [Durumu]) VALUES (16, N'Stres Düzeyi ', N' Bu ölçek, bireyin hayatındaki değişimin uyum sağlama çabası ve sonra istikrarı yeniden kazanma çabası gerektirdiğini göstermektedir. Stres, iç homeostazı uyarlamanın ve ardından yeniden kazanmanın doğal bir yan ürünüdür. ', N'50', 7, 5, 1)
SET IDENTITY_INSERT [dbo].[Test] OFF
GO
SET IDENTITY_INSERT [dbo].[TestSonucOzellik] ON 

INSERT [dbo].[TestSonucOzellik] ([Id], [TestId], [Adi], [Aciklama], [Durumu]) VALUES (1, 3, N'GÖRSEL', N'Görerek ve okuyarak öğrenmeyi tercih ederler. Kendi kendine okuyarak öğrenirler. Renkli şeyleri, grafik ve haritaları tercih ederler.', 1)
INSERT [dbo].[TestSonucOzellik] ([Id], [TestId], [Adi], [Aciklama], [Durumu]) VALUES (2, 3, N'İŞİTSEL', N'İşiterek, dinleyerek ve tartışarak öğrenmeyi tercih ederler.', 1)
INSERT [dbo].[TestSonucOzellik] ([Id], [TestId], [Adi], [Aciklama], [Durumu]) VALUES (3, 3, N'KINESTETİK', N' Bazılarının aklında hareket enerjisi daha iyi kalır. Bunlar öğrenecekleri şeylerle fiziksel temas kurarak, yaparak öğrenirler; tacdil, kişinin el ile duyumsamasına dayanır. Kinestetik gezme, pandomimi kapsar.', 1)
INSERT [dbo].[TestSonucOzellik] ([Id], [TestId], [Adi], [Aciklama], [Durumu]) VALUES (7, 14, N'Sağlık Beden', N' Sağlıklı bisiris misin', 1)
INSERT [dbo].[TestSonucOzellik] ([Id], [TestId], [Adi], [Aciklama], [Durumu]) VALUES (8, 14, N'Okul ögretmen ders', N' Okul ögretmen ders', 1)
INSERT [dbo].[TestSonucOzellik] ([Id], [TestId], [Adi], [Aciklama], [Durumu]) VALUES (9, 14, N'ev aile', N' ev', 1)
INSERT [dbo].[TestSonucOzellik] ([Id], [TestId], [Adi], [Aciklama], [Durumu]) VALUES (10, 14, N'toplumsal ilişkiler', N' toplumsal ilişkiler', 1)
INSERT [dbo].[TestSonucOzellik] ([Id], [TestId], [Adi], [Aciklama], [Durumu]) VALUES (11, 14, N'meslek gelecek', N' gelecek', 1)
INSERT [dbo].[TestSonucOzellik] ([Id], [TestId], [Adi], [Aciklama], [Durumu]) VALUES (12, 14, N'kişilik', N' kişilik', 1)
INSERT [dbo].[TestSonucOzellik] ([Id], [TestId], [Adi], [Aciklama], [Durumu]) VALUES (13, 16, N'Puan toplamlar', N' Her soruyu dikkatle okuyun. Kendiniz için doğru olan cevabın içini doldurun Her soru için bir tek cevap seçin. Eğer fikrinizi değiştirirseniz hatalı cevabı silerek düzeltin Siz bu soruların cevabını bilen tek kişisiniz. Bu sebeple uygun olan, kendiniz için doğru cevabı vermenizdir.', 1)
SET IDENTITY_INSERT [dbo].[TestSonucOzellik] OFF
GO
SET IDENTITY_INSERT [dbo].[TestSonucOzellikTurleri] ON 

INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (1, 1, N'Doğal olduğu yerler', N'İyi giyinir, ayrıntıları ve renkleri hatırlar, okumayı, yazmayı sever, insanların yüzünü hatırlar ama isimlerini unutur. Yazılarda görülen isimleri hatırlar, zihinsel (görsel) imgeler yaratır.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (2, 1, N'Problem çözme yolları', N'Talimatları okur, problemleri listeler, düşünceleri düzenlerken grafiksel malzemeler kullanır. Akış kartları kullanır, kâğıt üzerinde grafiksel çalışmaları görür ve akılda canlandırır.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (3, 1, N'Değerlendirme ve test etme ihtiyacı', N'Görsel-yazılı testler, araştırma raporları, yazılı raporlar, grafiksel gösterimlerden yararlanır. Yazılı sınavlarda başarılıdır.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (4, 1, N'En iyi öğrenme yolları', N'Not alarak, liste yaparak, öğrenilecek bilgileri okuyarak, bir gösteriyi izleyerek öğrenir. Kitaplardan video filmlerinden ve basılı materyallerden yararlanır.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (5, 1, N'Okuma / çalışma özellikleri', N'Ne yapılacağını görmeden hareket etmekte zorlanır. Gürültülü ve hareketli çevrede çalışamaz. Ses akort edemez. Görsel resim ve malzeme olmadan öğretmeni dinleyemez, öğretmenin hoş olmayan görüntüsü ile ilgilenir. Sıkıcı ve düzensiz bir sınıfta çalışmak istemez, konsantrasyonu bozan florasan ışığı altında çalışmaktan verim alamaz.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (6, 1, N'Genel değerlendirme', N'	Özel yaşamlarında genellikle düzenli olurlar. Karışıklık ve dağınıklıktan rahatsız olurlar. Dağınık bir masada çalışamazlar. Önce masayı kendine göre düzenlerler, daha sonra çalışmaya başlarlar. Kalem, silgi, kalemtıraş gibi araçlar için masada kendilerine göre yer belirlerler ve araç gereçlerini hep bu yerlerde tutarlar. Çantaları dolapları her zaman düzenlidir.
Yazmayı sevmeseler bile defterlerini düzenli ve itinalı kullanırlar. Düz anlatım dediğimiz- okullarda dersi öğretmenin veya öğrencinin anlatması- yönteminden yeterince yararlanamazlar. Tam olarak anlaşılması için dersin görsel malzemelerle mutlaka desteklenmesi gerekir. Harita, poster, şema, grafik gibi görsel araçlardan kolay etkilenirler ve bu araçlardan öğrendiklerini kolay hatırlarlar. Öğrendikleri konuları gözlerinin önüne getirerek hatırlamaya çalışırlar.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (7, 2, N'Doğal olduğu yerler', N'Doğaçlama (spontane ) konuşur, ayaküstü düşünür, karşılaştığı insanların yüzlerini unutur ama adlarını hatırlar, kelimelerle ve dille çalışır, hafif sesli ortamlardan hoşlanır.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (8, 2, N'Problem çözme yolları', N'Tartışmalardan hoşlanır, seçenekler hakkında konuşur, bir durumda ne yapılacağını o durumu yaşayanlara sorar, hedefi sözle ifade eder, sözlü tekrarlar yapar.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (9, 2, N'Değerlendirme ve test etme ihtiyacı', N'Yazılılardan ziyade sözlülerde başarılı olur, projelerini sözlü olarak sunar, ne öğrendiğinin birileri tarafından sorulmasını ister, şiir okumaktan, şarkı söylemekten hoşlanır.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (10, 2, N'En iyi öğrenme yolları', N'Yüksek sesle anlatım, bir öğretmeni dinleme küçük ve büyük grup tartışması yapma, çalışma yerinde fon olarak sessiz müzik dinleme ile daha iyi öğrenir.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (11, 2, N'Okuma / çalışma özellikleri', N'Diyalog ve oyunları okuma, karşılaştırma için içten ve dıştan seslendirme, okurken ne okuduğu hakkında kendi kendilerine ve başkalarına konuşma ve yeni kelimeleri seslendirmede başarılıdır.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (12, 2, N'Okuldaki güçlükleri', N'Görsel öğrencilerden daha yavaş okur, uzun süre sessiz okuyamaz, okuduğu parçada resimleri umursamaz, okunması ve yazılması gereken zamana bağlı testlerde ayrıntıları görmede, sessizleştirilmiş ortamda yaşamada ve uzun süre sessiz kalmakta sıkıntı yaşar.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (13, 2, N'Genel değerlendirme', N'Küçük yaşlarda kendi kendilerine konuşurlar. Ses ve müziğe duyarlıdır. Sohbet etmeyi, birileri ile çalışmayı severler. Genellikle ahenkli ve güzel konuşurlar. Yabancı dil öğreniminde (konuşma ve dinleme becerilerinde) başarılıdır.
İlkokul 1. ve 2. sınıflarında kendi kendilerine konuşmaları nedeni ile öğretmeni dinleyemezler, bu özellikleri nedeniyle işittiklerini daha iyi anlamalarına rağmen bu şanslarını kaybederler. Göz ile okuma esnasında hiçi bir şey anlamayabilirler o nedenle en azından kendi kulağının duyabileceği bir ses ile okumalarını izin verilmelidir. İşittiklerini daha iyi anlarlar. Daha çok konuşarak, tartışarak öğrenirler. Bilgi alırken dinlemeyi okumaya tercih ederler. Olay ve kavramları birinin anlatması ile daha iyi anlarlar. Grup ve ikili çalışmalarda konuşma ve dinleme olanakları olduğu için iyi öğrenirler. Hatırlamak istediklerini birisi kendilerine anlatıyor ya da söylüyormuş gibi işiterek hatırlarlar. Kaydedilmiş bilgileri daha iyi hatırlarlar.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (14, 3, N'Doğal olduğu yerler', N'Çeşitli spor ve danslarla uğraşmayı sever, yarışmalardan ve maceradan hoşlanır, zorluklara meydan okur. Koşma, sıçrama, atlama, yuvarlanma ve büyük motor kasları kullanmayı gerektiren eylemlerden hoşlanır.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (15, 3, N'Problem çözme yolları', N'Harekete geçer, daha sonra da sonuçlara bakarak plan yapar, problemleri güç kullanarak (fiziksel olarak) çözmeye çalışır. Önemli ölçüde bedensel çaba gerektiren çözümler arar. Problemleri bireysel olarak veya çok küçük gruplarla çalışarak çözmeyi tercih eder, deneme-yanılma ve keşfetme yoluyla öğrenir.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (16, 3, N'Değerlendirme ve test etme ihtiyacı', N'Performansa dayalı ve proje yönelimli değerlendirmelerde başarılı olur. Öğrencinin öğrendiği şeyi sergileme veya gösterme eğilimi vardır. Bir şeyi anlatmaktan ziyade nasıl yapılacağını göstermeyi tercih eder.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (17, 3, N'En iyi öğrenme yolları', N'Canlandırma, taklit yaparak, gezerek ve performansa dayalı öğrenmeyle daha iyi öğrenir. Küçük tartışma grupları ile öğrenir.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (18, 3, N'Okuma / çalışma özellikleri', N'Eğlenmekten ziyade anlamak için okur, bir şeyin nasıl yapılacağını öğrenmek için okur. Kitapları, öğrendiği şeyleri, oyunları pratiğe döker. Kısa kitapları okumayı sever. Kısa dönemli çalışmalardan hoşlanır, parça parça çalışmaktan hoşlanır, yere uzanarak çalışmaktan hoşlanır.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (19, 3, N'Okuldaki güçlükleri', N'Okunaklı el yazısına sahip değildir. Dışa dönük rahattır. Uzun süre oturamaz, 40 dk. Den daha fazla dikkatini toplayamaz. Kelimeleri doğru okuma ve kullanmada sıkıntı yaşar, duyulan görülen ve yapılan şeyleri hatırlamakta zorlanır. Fiziksel bir hareket olmaksın duygularını açıklayamaz, uzun süre herhangi bir eylemi devam ettiremez.', 1)
INSERT [dbo].[TestSonucOzellikTurleri] ([Id], [TestSonucOzellikId], [Adi], [Aciklama], [Durumu]) VALUES (20, 3, N'Genel değerlendirme', N'   Oldukça hareketli olurlar. Sınıfta yerlerinde duramazlar. Sürekli hareket halindedirler. Tahtayı silmek, pencereyi açmak, tebeşir getirmek, kapıyı örtmek hep onların görevi olsun isterler. Uzun müddet oturmaya zorlanırlarsa derste ne olup bittiğini anlamaz hale gelebilirler. Bu hareketlilik uygun işlere yönlendirilmezse genelde sınıfta problem çıkarırlar. Genellikle istenmeyen öğrenci haline gelirler. Tahta-tebeşir-anlatım ders işleme sisteminden en az yararlanırlar, bu nedenlerden dolayı da yaramaz, tembel, ya da zeki olmadıkları ileri sürülebilir.
Dersin anlatılması veya görsel malzemelerle zenginleştirilmesi bu tür öğrencilere beklenildiği ölçülerde katkı sağlamaz. O nedenle sınıflarımızda ideal ders araçları olarak kabul edilen, şema, harita, fotoğraf gibi görsel araçlar görsel öğrencilere göre Kinestetik öğrenciler için daha az değer taşır. Anlatımdan da yararlanamazlar. Öğrenebilmeleri için mutlaka elini kullanabilecekleri, yaparak yaşayarak öğrenme dediğimiz yöntemlerin kullanılması gerekir. Sınıf yerine okul bahçesi veya laboratuarda dokunarak, ellerini kullanarak, olayların içinde yaşayarak en iyi öğrenirler. Çalışırken sık sık ara vermeye gereksinim duyabilir. Sözcükleri yada sözel bilgileri öğrenirken onları kuma yazması, yada kilden yaratması gibi öğrenirken ellerini kullanabilmesi, ders çalışırken hareket edebilmesi öğrenmesini kolaylaştırabilir. Örneğin küçük çocuklar çarpım tablosunu öğrenirken ip atlayabilirler.', 1)
SET IDENTITY_INSERT [dbo].[TestSonucOzellikTurleri] OFF
GO
SET IDENTITY_INSERT [dbo].[TestSorusuCevabi] ON 

INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (1, 3, 1058, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (2, 3, 1059, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (3, 3, 1060, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (4, 3, 1061, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (5, 3, 1062, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (6, 3, 1063, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (7, 3, 1064, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (8, 3, 1065, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (9, 3, 1066, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (10, 3, 1067, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (11, 3, 1068, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (12, 3, 1069, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (13, 3, 1070, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (14, 3, 1071, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (15, 3, 1072, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (16, 3, 1073, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (17, 3, 1074, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (18, 3, 1075, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (19, 3, 1076, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (20, 3, 1077, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (21, 3, 1078, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (22, 3, 1079, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (23, 3, 1080, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (24, 3, 1081, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (25, 3, 1082, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (26, 3, 1083, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (27, 3, 1084, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (28, 3, 1085, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (29, 3, 1086, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (30, 3, 1087, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (31, 3, 1088, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (32, 3, 1089, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (33, 3, 1090, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (34, 3, 1091, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (35, 3, 1092, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (36, 3, 1093, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (37, 3, 1094, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (38, 3, 1095, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (39, 3, 1096, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (40, 3, 1097, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (41, 3, 1098, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (42, 3, 1099, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (43, 3, 1100, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (44, 3, 1101, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (45, 3, 1102, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (46, 3, 1103, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (47, 3, 1104, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (48, 3, 1105, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (49, 3, 1106, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (50, 3, 1107, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (51, 3, 1108, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (53, 3, 1109, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (54, 3, 1110, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (55, 3, 1111, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (56, 3, 1112, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (57, 3, 1113, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (58, 3, 1114, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (59, 3, 1115, 1, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (60, 3, 1116, 2, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (61, 3, 1117, 3, 1, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (62, 14, 1119, 7, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (63, 14, 1120, 7, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (64, 14, 1121, 7, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (65, 14, 1122, 7, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (66, 14, 1123, 7, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (67, 14, 1124, 7, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (68, 14, 1125, 7, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (69, 14, 1126, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (70, 14, 1127, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (71, 14, 1128, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (72, 14, 1129, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (73, 14, 1130, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (74, 14, 1131, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (75, 14, 1132, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (76, 14, 1133, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (77, 14, 1134, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (78, 14, 1135, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (79, 14, 1136, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (80, 14, 1137, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (81, 14, 1138, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (82, 14, 1139, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (83, 14, 1140, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (84, 14, 1141, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (85, 14, 1142, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (86, 14, 1143, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (87, 14, 1144, 8, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (88, 14, 1145, 9, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (89, 14, 1146, 9, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (90, 14, 1147, 9, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (91, 14, 1148, 9, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (92, 14, 1149, 9, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (93, 14, 1150, 9, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (94, 14, 1151, 9, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (95, 14, 1152, 9, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (96, 14, 1153, 10, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (97, 14, 1154, 10, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (98, 14, 1155, 10, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (99, 14, 1156, 10, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (100, 14, 1157, 10, 3, 1, 1)
GO
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (101, 14, 1158, 10, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (102, 14, 1159, 10, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (103, 14, 1160, 11, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (104, 14, 1161, 11, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (105, 14, 1162, 11, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (106, 14, 1163, 11, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (107, 14, 1164, 11, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (108, 14, 1165, 12, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (109, 14, 1166, 12, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (110, 14, 1167, 12, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (111, 14, 1168, 12, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (112, 14, 1169, 12, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (113, 14, 1170, 12, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (114, 14, 1171, 12, 3, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (115, 16, 1172, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (116, 16, 1173, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (117, 16, 1174, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (118, 16, 1175, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (119, 16, 1176, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (120, 16, 1177, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (121, 16, 1178, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (122, 16, 1179, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (123, 16, 1180, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (124, 16, 1181, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (125, 16, 1172, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (126, 16, 1182, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (127, 16, 1183, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (128, 16, 1184, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (129, 16, 1185, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (130, 16, 1186, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (131, 16, 1187, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (132, 16, 1188, 13, 14, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (133, 16, 1189, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (134, 16, 1190, 13, 14, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (135, 16, 1191, 13, 14, 3, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (136, 16, 1173, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (137, 16, 1174, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (138, 16, 1175, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (139, 16, 1176, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (140, 16, 1177, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (141, 16, 1178, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (142, 16, 1179, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (143, 16, 1180, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (144, 16, 1181, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (145, 16, 1182, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (146, 16, 1183, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (147, 16, 1184, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (148, 16, 1185, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (149, 16, 1186, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (150, 16, 1187, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (151, 16, 1188, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (152, 16, 1189, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (153, 16, 1190, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (154, 16, 1191, 13, 15, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (155, 16, 1172, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (156, 16, 1173, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (157, 16, 1174, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (158, 16, 1175, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (159, 16, 1176, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (160, 16, 1177, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (161, 16, 1178, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (162, 16, 1179, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (163, 16, 1180, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (164, 16, 1181, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (165, 16, 1182, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (166, 16, 1183, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (167, 16, 1184, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (168, 16, 1185, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (169, 16, 1186, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (170, 16, 1187, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (171, 16, 1188, 13, 16, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (172, 16, 1189, 13, 16, 1, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (173, 16, 1190, 13, 16, 2, 1)
INSERT [dbo].[TestSorusuCevabi] ([Id], [TestId], [SoruId], [TestSonucOzellikId], [CevapTipiSecenekleriId], [SecenekPuani], [Durumu]) VALUES (174, 16, 1191, 13, 16, 1, 1)
SET IDENTITY_INSERT [dbo].[TestSorusuCevabi] OFF
GO
SET IDENTITY_INSERT [dbo].[Yuzde] ON 

INSERT [dbo].[Yuzde] ([Id], [TestSonucOzellikId], [Yuzdesi], [Aciklama]) VALUES (2, 1, 20, N'20üstü1')
INSERT [dbo].[Yuzde] ([Id], [TestSonucOzellikId], [Yuzdesi], [Aciklama]) VALUES (3, 1, 40, N'40üstü1')
INSERT [dbo].[Yuzde] ([Id], [TestSonucOzellikId], [Yuzdesi], [Aciklama]) VALUES (4, 1, 60, N'60üstü1')
INSERT [dbo].[Yuzde] ([Id], [TestSonucOzellikId], [Yuzdesi], [Aciklama]) VALUES (5, 1, 80, N'80üstü1')
INSERT [dbo].[Yuzde] ([Id], [TestSonucOzellikId], [Yuzdesi], [Aciklama]) VALUES (6, 2, 20, N'20üstü2')
INSERT [dbo].[Yuzde] ([Id], [TestSonucOzellikId], [Yuzdesi], [Aciklama]) VALUES (7, 2, 40, N'40üstü2')
INSERT [dbo].[Yuzde] ([Id], [TestSonucOzellikId], [Yuzdesi], [Aciklama]) VALUES (8, 2, 60, N'60üstü2')
INSERT [dbo].[Yuzde] ([Id], [TestSonucOzellikId], [Yuzdesi], [Aciklama]) VALUES (9, 2, 80, N'80üstü2')
INSERT [dbo].[Yuzde] ([Id], [TestSonucOzellikId], [Yuzdesi], [Aciklama]) VALUES (10, 3, 20, N'20üstü3')
INSERT [dbo].[Yuzde] ([Id], [TestSonucOzellikId], [Yuzdesi], [Aciklama]) VALUES (11, 3, 40, N'40üstü3')
INSERT [dbo].[Yuzde] ([Id], [TestSonucOzellikId], [Yuzdesi], [Aciklama]) VALUES (12, 3, 60, N'60üstü3')
SET IDENTITY_INSERT [dbo].[Yuzde] OFF
GO
ALTER TABLE [dbo].[CevapTipiSecenekleri]  WITH CHECK ADD  CONSTRAINT [FK_CevapTipiSecenekleri_CevapTipleri] FOREIGN KEY([CevapTipiId])
REFERENCES [dbo].[CevapTipleri] ([Id])
GO
ALTER TABLE [dbo].[CevapTipiSecenekleri] CHECK CONSTRAINT [FK_CevapTipiSecenekleri_CevapTipleri]
GO
ALTER TABLE [dbo].[KullaniciBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciBilgileri_Kullanicilar] FOREIGN KEY([KullanicilarId])
REFERENCES [dbo].[Kullanicilar] ([Id])
GO
ALTER TABLE [dbo].[KullaniciBilgileri] CHECK CONSTRAINT [FK_KullaniciBilgileri_Kullanicilar]
GO
ALTER TABLE [dbo].[KullaniciBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciBilgileri_Okul1] FOREIGN KEY([OkulId])
REFERENCES [dbo].[Okul] ([Id])
GO
ALTER TABLE [dbo].[KullaniciBilgileri] CHECK CONSTRAINT [FK_KullaniciBilgileri_Okul1]
GO
ALTER TABLE [dbo].[KullaniciBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciBilgileri_Sinif1] FOREIGN KEY([SinifId])
REFERENCES [dbo].[Sinif] ([Id])
GO
ALTER TABLE [dbo].[KullaniciBilgileri] CHECK CONSTRAINT [FK_KullaniciBilgileri_Sinif1]
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_Kullanicilar_Rol] FOREIGN KEY([RolId])
REFERENCES [dbo].[Rol] ([Id])
GO
ALTER TABLE [dbo].[Kullanicilar] CHECK CONSTRAINT [FK_Kullanicilar_Rol]
GO
ALTER TABLE [dbo].[Sinif]  WITH CHECK ADD  CONSTRAINT [FK_Sinif_Okul] FOREIGN KEY([OkulId])
REFERENCES [dbo].[Okul] ([Id])
GO
ALTER TABLE [dbo].[Sinif] CHECK CONSTRAINT [FK_Sinif_Okul]
GO
ALTER TABLE [dbo].[Sonuclar]  WITH CHECK ADD  CONSTRAINT [FK_Sonuclar_KullaniciBilgileri] FOREIGN KEY([KullaniciBilgileriId])
REFERENCES [dbo].[KullaniciBilgileri] ([Id])
GO
ALTER TABLE [dbo].[Sonuclar] CHECK CONSTRAINT [FK_Sonuclar_KullaniciBilgileri]
GO
ALTER TABLE [dbo].[Sonuclar]  WITH CHECK ADD  CONSTRAINT [FK_Sonuclar_Test] FOREIGN KEY([TestId])
REFERENCES [dbo].[Test] ([Id])
GO
ALTER TABLE [dbo].[Sonuclar] CHECK CONSTRAINT [FK_Sonuclar_Test]
GO
ALTER TABLE [dbo].[Sonuclar]  WITH CHECK ADD  CONSTRAINT [FK_Sonuclar_TestSonucOzellik] FOREIGN KEY([TestSonucOzellikId])
REFERENCES [dbo].[TestSonucOzellik] ([Id])
GO
ALTER TABLE [dbo].[Sonuclar] CHECK CONSTRAINT [FK_Sonuclar_TestSonucOzellik]
GO
ALTER TABLE [dbo].[Soru]  WITH CHECK ADD  CONSTRAINT [FK_Soru_Test] FOREIGN KEY([TestId])
REFERENCES [dbo].[Test] ([Id])
GO
ALTER TABLE [dbo].[Soru] CHECK CONSTRAINT [FK_Soru_Test]
GO
ALTER TABLE [dbo].[Test]  WITH CHECK ADD  CONSTRAINT [FK_Test_CevapTipleri] FOREIGN KEY([CevapTipiId])
REFERENCES [dbo].[CevapTipleri] ([Id])
GO
ALTER TABLE [dbo].[Test] CHECK CONSTRAINT [FK_Test_CevapTipleri]
GO
ALTER TABLE [dbo].[Test]  WITH CHECK ADD  CONSTRAINT [FK_Test_Kategori] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Kategori] ([Id])
GO
ALTER TABLE [dbo].[Test] CHECK CONSTRAINT [FK_Test_Kategori]
GO
ALTER TABLE [dbo].[TestSonucOzellik]  WITH CHECK ADD  CONSTRAINT [FK_TestSonucOzellik_Test] FOREIGN KEY([TestId])
REFERENCES [dbo].[Test] ([Id])
GO
ALTER TABLE [dbo].[TestSonucOzellik] CHECK CONSTRAINT [FK_TestSonucOzellik_Test]
GO
ALTER TABLE [dbo].[TestSonucOzellikTurleri]  WITH CHECK ADD  CONSTRAINT [FK_TestSonucOzellikTurleri_TestSonucOzellik] FOREIGN KEY([TestSonucOzellikId])
REFERENCES [dbo].[TestSonucOzellik] ([Id])
GO
ALTER TABLE [dbo].[TestSonucOzellikTurleri] CHECK CONSTRAINT [FK_TestSonucOzellikTurleri_TestSonucOzellik]
GO
ALTER TABLE [dbo].[TestSorusuCevabi]  WITH CHECK ADD  CONSTRAINT [FK_TestSorusuCevabı_CevapTipiSecenekleri] FOREIGN KEY([CevapTipiSecenekleriId])
REFERENCES [dbo].[CevapTipiSecenekleri] ([Id])
GO
ALTER TABLE [dbo].[TestSorusuCevabi] CHECK CONSTRAINT [FK_TestSorusuCevabı_CevapTipiSecenekleri]
GO
ALTER TABLE [dbo].[TestSorusuCevabi]  WITH CHECK ADD  CONSTRAINT [FK_TestSorusuCevabı_Soru] FOREIGN KEY([SoruId])
REFERENCES [dbo].[Soru] ([Id])
GO
ALTER TABLE [dbo].[TestSorusuCevabi] CHECK CONSTRAINT [FK_TestSorusuCevabı_Soru]
GO
ALTER TABLE [dbo].[TestSorusuCevabi]  WITH CHECK ADD  CONSTRAINT [FK_TestSorusuCevabı_Test] FOREIGN KEY([TestId])
REFERENCES [dbo].[Test] ([Id])
GO
ALTER TABLE [dbo].[TestSorusuCevabi] CHECK CONSTRAINT [FK_TestSorusuCevabı_Test]
GO
ALTER TABLE [dbo].[TestSorusuCevabi]  WITH CHECK ADD  CONSTRAINT [FK_TestSorusuCevabı_TestSonucOzellik] FOREIGN KEY([TestSonucOzellikId])
REFERENCES [dbo].[TestSonucOzellik] ([Id])
GO
ALTER TABLE [dbo].[TestSorusuCevabi] CHECK CONSTRAINT [FK_TestSorusuCevabı_TestSonucOzellik]
GO
ALTER TABLE [dbo].[VerilenCevaplar]  WITH CHECK ADD  CONSTRAINT [FK_VerilenCevaplar_CevapTipiSecenekleri] FOREIGN KEY([CevapTipiSecenekleriId])
REFERENCES [dbo].[CevapTipiSecenekleri] ([Id])
GO
ALTER TABLE [dbo].[VerilenCevaplar] CHECK CONSTRAINT [FK_VerilenCevaplar_CevapTipiSecenekleri]
GO
ALTER TABLE [dbo].[VerilenCevaplar]  WITH CHECK ADD  CONSTRAINT [FK_VerilenCevaplar_CevapTipleri] FOREIGN KEY([CevapTipiId])
REFERENCES [dbo].[CevapTipleri] ([Id])
GO
ALTER TABLE [dbo].[VerilenCevaplar] CHECK CONSTRAINT [FK_VerilenCevaplar_CevapTipleri]
GO
ALTER TABLE [dbo].[VerilenCevaplar]  WITH CHECK ADD  CONSTRAINT [FK_VerilenCevaplar_KullaniciBilgileri] FOREIGN KEY([KullaniciBilgileriId])
REFERENCES [dbo].[KullaniciBilgileri] ([Id])
GO
ALTER TABLE [dbo].[VerilenCevaplar] CHECK CONSTRAINT [FK_VerilenCevaplar_KullaniciBilgileri]
GO
ALTER TABLE [dbo].[VerilenCevaplar]  WITH CHECK ADD  CONSTRAINT [FK_VerilenCevaplar_Soru] FOREIGN KEY([SoruId])
REFERENCES [dbo].[Soru] ([Id])
GO
ALTER TABLE [dbo].[VerilenCevaplar] CHECK CONSTRAINT [FK_VerilenCevaplar_Soru]
GO
ALTER TABLE [dbo].[VerilenCevaplar]  WITH CHECK ADD  CONSTRAINT [FK_VerilenCevaplar_Test] FOREIGN KEY([TestId])
REFERENCES [dbo].[Test] ([Id])
GO
ALTER TABLE [dbo].[VerilenCevaplar] CHECK CONSTRAINT [FK_VerilenCevaplar_Test]
GO
ALTER TABLE [dbo].[Yuzde]  WITH CHECK ADD  CONSTRAINT [FK_Yuzde_TestSonucOzellik] FOREIGN KEY([TestSonucOzellikId])
REFERENCES [dbo].[TestSonucOzellik] ([Id])
GO
ALTER TABLE [dbo].[Yuzde] CHECK CONSTRAINT [FK_Yuzde_TestSonucOzellik]
GO
/****** Object:  StoredProcedure [dbo].[spCreateAndListCategory]    Script Date: 15.07.2022 23:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spCreateAndListCategory]
 @Adi nvarchar(50),
 @Durumu int
	
AS
BEGIN
	

	Insert into Kategori(Adi,Durumu)
	values(@Adi,@Durumu)


	SELECT * FROM Kategori
END
GO
