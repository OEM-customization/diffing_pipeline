.class final Lcom/android/org/conscrypt/NativeRef$EC_POINT;
.super Lcom/android/org/conscrypt/NativeRef;
.source "NativeRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/NativeRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EC_POINT"
.end annotation


# direct methods
.method constructor <init>(J)V
    .registers 4
    .param p1, "nativePointer"    # J

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/NativeRef;-><init>(J)V

    .line 75
    return-void
.end method


# virtual methods
.method doFree(J)V
    .registers 4
    .param p1, "context"    # J

    .prologue
    .line 79
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_clear_free(J)V

    .line 80
    return-void
.end method
