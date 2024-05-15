.class public final Lcom/android/org/conscrypt/KeyGeneratorImpl$HmacSHA384;
.super Lcom/android/org/conscrypt/KeyGeneratorImpl;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HmacSHA384"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 115
    const-string/jumbo v0, "HmacSHA384"

    const/16 v1, 0x180

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/KeyGeneratorImpl;)V

    .line 116
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
