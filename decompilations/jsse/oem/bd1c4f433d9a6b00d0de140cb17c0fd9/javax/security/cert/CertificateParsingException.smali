.class public Ljavax/security/cert/CertificateParsingException;
.super Ljavax/security/cert/CertificateException;
.source "CertificateParsingException.java"


# static fields
.field private static final serialVersionUID:J = -0x754221431816abe5L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljavax/security/cert/CertificateException;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method
