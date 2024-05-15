.class public Ljava/security/cert/CertificateNotYetValidException;
.super Ljava/security/cert/CertificateException;
.source "CertificateNotYetValidException.java"


# static fields
.field static final serialVersionUID:J = 0x3c7356120800b0feL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/security/cert/CertificateException;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method
