.class final Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
.super Lcom/android/org/conscrypt/NativeRef;
.source "NativeRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/NativeRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EVP_MD_CTX"
.end annotation


# direct methods
.method constructor <init>(J)V
    .registers 4
    .param p1, "nativePointer"    # J

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/NativeRef;-><init>(J)V

    .line 97
    return-void
.end method


# virtual methods
.method doFree(J)V
    .registers 4
    .param p1, "context"    # J

    .prologue
    .line 101
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_destroy(J)V

    .line 102
    return-void
.end method
