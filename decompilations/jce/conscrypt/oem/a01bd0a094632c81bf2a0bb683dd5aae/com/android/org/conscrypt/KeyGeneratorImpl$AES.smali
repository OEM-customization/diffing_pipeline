.class public final Lcom/android/org/conscrypt/KeyGeneratorImpl$AES;
.super Lcom/android/org/conscrypt/KeyGeneratorImpl;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AES"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 157
    const-string/jumbo v0, "AES"

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/KeyGeneratorImpl;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected checkKeySize(I)V
    .registers 4
    .param p1, "keySize"    # I

    .prologue
    .line 162
    const/16 v0, 0x80

    if-eq p1, v0, :cond_15

    const/16 v0, 0xc0

    if-eq p1, v0, :cond_15

    const/16 v0, 0x100

    if-eq p1, v0, :cond_15

    .line 163
    new-instance v0, Ljava/security/InvalidParameterException;

    .line 164
    const-string/jumbo v1, "Key size must be either 128, 192, or 256 bits"

    .line 163
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_15
    return-void
.end method
