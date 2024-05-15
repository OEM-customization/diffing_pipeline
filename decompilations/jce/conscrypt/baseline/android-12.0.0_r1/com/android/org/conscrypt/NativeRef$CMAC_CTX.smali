.class final Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;
.super Lcom/android/org/conscrypt/NativeRef;
.source "NativeRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/NativeRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CMAC_CTX"
.end annotation


# direct methods
.method constructor blacklist <init>(J)V
    .registers 3
    .param p1, "nativePointer"    # J

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/NativeRef;-><init>(J)V

    .line 66
    return-void
.end method


# virtual methods
.method blacklist doFree(J)V
    .registers 3
    .param p1, "context"    # J

    .line 70
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->CMAC_CTX_free(J)V

    .line 71
    return-void
.end method
