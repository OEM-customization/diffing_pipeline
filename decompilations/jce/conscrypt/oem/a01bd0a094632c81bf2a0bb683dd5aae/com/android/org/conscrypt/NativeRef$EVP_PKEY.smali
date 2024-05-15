.class final Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;
.super Lcom/android/org/conscrypt/NativeRef;
.source "NativeRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/NativeRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EVP_PKEY"
.end annotation


# direct methods
.method constructor <init>(J)V
    .registers 4
    .param p1, "nativePointer"    # J

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/NativeRef;-><init>(J)V

    .line 108
    return-void
.end method


# virtual methods
.method doFree(J)V
    .registers 4
    .param p1, "context"    # J

    .prologue
    .line 112
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_free(J)V

    .line 113
    return-void
.end method
