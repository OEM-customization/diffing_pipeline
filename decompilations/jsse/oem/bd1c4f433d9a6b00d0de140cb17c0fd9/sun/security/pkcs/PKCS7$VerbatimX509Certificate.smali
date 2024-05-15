.class Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;
.super Lsun/security/pkcs/PKCS7$WrappedX509Certificate;
.source "PKCS7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/pkcs/PKCS7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VerbatimX509Certificate"
.end annotation


# instance fields
.field private encodedVerbatim:[B


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .registers 3
    .param p1, "wrapped"    # Ljava/security/cert/X509Certificate;
    .param p2, "encodedVerbatim"    # [B

    .prologue
    .line 814
    invoke-direct {p0, p1}, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 815
    iput-object p2, p0, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;->encodedVerbatim:[B

    .line 816
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 820
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;->encodedVerbatim:[B

    return-object v0
.end method
