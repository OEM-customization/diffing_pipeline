.class public Ljava/security/cert/CertificateExpiredException;
.super Ljava/security/cert/CertificateException;
.source "CertificateExpiredException.java"


# static fields
.field private static final serialVersionUID:J = 0x7de2aba8816805cbL


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
