.class public final Lcom/android/org/conscrypt/KeyGeneratorImpl$HmacSHA512;
.super Lcom/android/org/conscrypt/KeyGeneratorImpl;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HmacSHA512"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 121
    const-string/jumbo v0, "HmacSHA512"

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/KeyGeneratorImpl;)V

    .line 122
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
