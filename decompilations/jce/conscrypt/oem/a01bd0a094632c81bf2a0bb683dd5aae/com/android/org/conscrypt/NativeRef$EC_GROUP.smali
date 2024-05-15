.class final Lcom/android/org/conscrypt/NativeRef$EC_GROUP;
.super Lcom/android/org/conscrypt/NativeRef;
.source "NativeRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/NativeRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EC_GROUP"
.end annotation


# direct methods
.method constructor <init>(J)V
    .registers 4
    .param p1, "ctx"    # J

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/NativeRef;-><init>(J)V

    .line 64
    return-void
.end method


# virtual methods
.method doFree(J)V
    .registers 4
    .param p1, "context"    # J

    .prologue
    .line 68
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_clear_free(J)V

    .line 69
    return-void
.end method
