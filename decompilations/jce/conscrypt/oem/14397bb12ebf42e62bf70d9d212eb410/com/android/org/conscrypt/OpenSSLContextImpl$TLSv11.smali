.class public final Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv11;
.super Lcom/android/org/conscrypt/OpenSSLContextImpl;
.source "OpenSSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TLSv11"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 165
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->TLSV11_PROTOCOLS:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;-><init>([Ljava/lang/String;)V

    .line 166
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
