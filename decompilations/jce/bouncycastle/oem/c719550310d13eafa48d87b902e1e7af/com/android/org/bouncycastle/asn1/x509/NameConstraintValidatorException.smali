.class public Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
.super Ljava/lang/Exception;
.source "NameConstraintValidatorException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
