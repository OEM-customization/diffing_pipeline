.class public final Lcom/android/org/conscrypt/KeyGeneratorImpl$HmacSHA1;
.super Lcom/android/org/conscrypt/KeyGeneratorImpl;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HmacSHA1"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 103
    const-string v0, "HmacSHA1"

    const/16 v1, 0xa0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/KeyGeneratorImpl$1;)V

    .line 104
    return-void
.end method
