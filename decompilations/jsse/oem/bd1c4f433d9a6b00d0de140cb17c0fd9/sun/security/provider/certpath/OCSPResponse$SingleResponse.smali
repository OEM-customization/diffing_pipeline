.class final Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
.super Ljava/lang/Object;
.source "OCSPResponse.java"

# interfaces
.implements Lsun/security/provider/certpath/OCSP$RevocationStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/OCSPResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleResponse"
.end annotation


# instance fields
.field private final certId:Lsun/security/provider/certpath/CertId;

.field private final certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

.field private final nextUpdate:Ljava/util/Date;

.field private final revocationReason:Ljava/security/cert/CRLReason;

.field private final revocationTime:Ljava/util/Date;

.field private final singleExtensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private final thisUpdate:Ljava/util/Date;


# direct methods
.method static synthetic -get0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;
    .registers 2
    .param p0, "-this"    # Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    .prologue
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic -get1(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;
    .registers 2
    .param p0, "-this"    # Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    .prologue
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic -wrap0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Lsun/security/provider/certpath/CertId;
    .registers 2
    .param p0, "-this"    # Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    .prologue
    invoke-direct {p0}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->getCertId()Lsun/security/provider/certpath/CertId;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Lsun/security/util/DerValue;)V
    .registers 15
    .param p1, "der"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    iget-byte v8, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v9, 0x30

    if-eq v8, v9, :cond_14

    .line 693
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Bad ASN.1 encoding in SingleResponse"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 695
    :cond_14
    iget-object v7, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 697
    .local v7, "tmp":Lsun/security/util/DerInputStream;
    new-instance v8, Lsun/security/provider/certpath/CertId;

    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v9

    iget-object v9, v9, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-direct {v8, v9}, Lsun/security/provider/certpath/CertId;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certId:Lsun/security/provider/certpath/CertId;

    .line 698
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 699
    .local v0, "derVal":Lsun/security/util/DerValue;
    iget-byte v8, v0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    int-to-short v6, v8

    .line 700
    .local v6, "tag":S
    if-ne v6, v12, :cond_137

    .line 701
    sget-object v8, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    .line 702
    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    .line 703
    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->available()I

    move-result v8

    if-eqz v8, :cond_131

    .line 704
    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 705
    .local v1, "dv":Lsun/security/util/DerValue;
    iget-byte v8, v1, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    int-to-short v6, v8

    .line 706
    if-nez v6, :cond_12b

    .line 707
    iget-object v8, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getEnumerated()I

    move-result v4

    .line 709
    .local v4, "reason":I
    if-ltz v4, :cond_125

    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get1()[Ljava/security/cert/CRLReason;

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_125

    .line 710
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get1()[Ljava/security/cert/CRLReason;

    move-result-object v8

    aget-object v8, v8, v4

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    .line 721
    .end local v1    # "dv":Lsun/security/util/DerValue;
    .end local v4    # "reason":I
    :goto_68
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    move-result-object v8

    if-eqz v8, :cond_a8

    .line 722
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Revocation time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 723
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Revocation reason: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 737
    :cond_a8
    :goto_a8
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;

    .line 739
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->available()I

    move-result v8

    if-nez v8, :cond_157

    .line 741
    iput-object v11, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    .line 760
    :cond_b6
    :goto_b6
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->available()I

    move-result v8

    if-lez v8, :cond_195

    .line 761
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 762
    invoke-virtual {v0, v12}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v8

    if-eqz v8, :cond_18e

    .line 763
    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v5

    .line 765
    .local v5, "singleExtDer":[Lsun/security/util/DerValue;
    new-instance v8, Ljava/util/HashMap;

    .line 766
    array-length v9, v5

    .line 765
    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 764
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    .line 767
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d6
    array-length v8, v5

    if-ge v3, v8, :cond_194

    .line 768
    new-instance v2, Lsun/security/x509/Extension;

    aget-object v8, v5, v3

    invoke-direct {v2, v8}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    .line 769
    .local v2, "ext":Lsun/security/x509/Extension;
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    move-result-object v8

    if-eqz v8, :cond_101

    .line 770
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "OCSP single extension: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 775
    :cond_101
    invoke-virtual {v2}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v8

    if-eqz v8, :cond_181

    .line 776
    new-instance v8, Ljava/io/IOException;

    .line 777
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unsupported OCSP critical extension: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 778
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v10

    .line 777
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 776
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 712
    .end local v2    # "ext":Lsun/security/x509/Extension;
    .end local v3    # "i":I
    .end local v5    # "singleExtDer":[Lsun/security/util/DerValue;
    .restart local v1    # "dv":Lsun/security/util/DerValue;
    .restart local v4    # "reason":I
    :cond_125
    sget-object v8, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    goto/16 :goto_68

    .line 715
    .end local v4    # "reason":I
    :cond_12b
    sget-object v8, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    goto/16 :goto_68

    .line 718
    .end local v1    # "dv":Lsun/security/util/DerValue;
    :cond_131
    sget-object v8, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    goto/16 :goto_68

    .line 726
    :cond_137
    iput-object v11, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    .line 727
    sget-object v8, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    .line 728
    if-nez v6, :cond_145

    .line 729
    sget-object v8, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->GOOD:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    goto/16 :goto_a8

    .line 730
    :cond_145
    const/4 v8, 0x2

    if-ne v6, v8, :cond_14e

    .line 731
    sget-object v8, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    goto/16 :goto_a8

    .line 733
    :cond_14e
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Invalid certificate status"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 743
    :cond_157
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 744
    iget-byte v8, v0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    int-to-short v6, v8

    .line 745
    if-nez v6, :cond_17d

    .line 747
    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    .line 749
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->available()I

    move-result v8

    if-eqz v8, :cond_b6

    .line 752
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 753
    iget-byte v8, v0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    int-to-short v6, v8

    goto/16 :goto_b6

    .line 756
    :cond_17d
    iput-object v11, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    goto/16 :goto_b6

    .line 780
    .restart local v2    # "ext":Lsun/security/x509/Extension;
    .restart local v3    # "i":I
    .restart local v5    # "singleExtDer":[Lsun/security/util/DerValue;
    :cond_181
    iget-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    invoke-virtual {v2}, Lsun/security/x509/Extension;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d6

    .line 783
    .end local v2    # "ext":Lsun/security/x509/Extension;
    .end local v3    # "i":I
    .end local v5    # "singleExtDer":[Lsun/security/util/DerValue;
    :cond_18e
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    .line 788
    :cond_194
    :goto_194
    return-void

    .line 786
    :cond_195
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    goto :goto_194
.end method

.method synthetic constructor <init>(Lsun/security/util/DerValue;Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)V
    .registers 3
    .param p1, "der"    # Lsun/security/util/DerValue;
    .param p2, "-this1"    # Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    .prologue
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;-><init>(Lsun/security/util/DerValue;)V

    return-void
.end method

.method private getCertId()Lsun/security/provider/certpath/CertId;
    .registers 2

    .prologue
    .line 798
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certId:Lsun/security/provider/certpath/CertId;

    return-object v0
.end method


# virtual methods
.method public getCertStatus()Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .registers 2

    .prologue
    .line 794
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    return-object v0
.end method

.method public getRevocationReason()Ljava/security/cert/CRLReason;
    .registers 2

    .prologue
    .line 806
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    return-object v0
.end method

.method public getRevocationTime()Ljava/util/Date;
    .registers 2

    .prologue
    .line 802
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getSingleExtensions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 811
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 819
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SingleResponse:  \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certId:Lsun/security/provider/certpath/CertId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 821
    const-string/jumbo v1, "\nCertStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    sget-object v2, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    if-ne v1, v2, :cond_4f

    .line 823
    const-string/jumbo v1, "revocationTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    const-string/jumbo v1, "revocationReason is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    :cond_4f
    const-string/jumbo v1, "thisUpdate is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    if-eqz v1, :cond_79

    .line 828
    const-string/jumbo v1, "nextUpdate is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :cond_79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
