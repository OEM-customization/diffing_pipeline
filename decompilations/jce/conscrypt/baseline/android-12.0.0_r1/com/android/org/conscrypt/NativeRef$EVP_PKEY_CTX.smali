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
.method constructor greylist-max-o <init>(J)V
    .registers 3
    .param p1, "nativePointer"    # J

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/NativeRef;-><init>(J)V

    .line 132
    return-void
.end method


# virtual methods
.method greylist-max-o doFree(J)V
    .registers 3
    .param p1, "context"    # J

    .line 136
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_free(J)V

    .line 137
    return-void
.end method