.class final Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;
.super Lcom/android/org/conscrypt/NativeRef;
.source "NativeRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/NativeRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EVP_PKEY_CTX"
.end annotation


# direct methods
.method constructor <init>(J)V
    .registers 4
    .param p1, "nativePointer"    # J

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/NativeRef;-><init>(J)V

    .line 119
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method doFree(J)V
    .registers 4
    .param p1, "context"    # J

    .prologue
    .line 123
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_free(J)V

    .line 124
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
