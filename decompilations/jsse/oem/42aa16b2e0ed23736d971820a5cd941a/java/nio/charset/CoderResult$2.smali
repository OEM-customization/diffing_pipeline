.class Ljava/nio/charset/CoderResult$2;
.super Ljava/nio/charset/CoderResult$Cache;
.source "CoderResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/charset/CoderResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/nio/charset/CoderResult$Cache;-><init>(Ljava/nio/charset/CoderResult$1;)V

    return-void
.end method


# virtual methods
.method public blacklist create(I)Ljava/nio/charset/CoderResult;
    .registers 5
    .param p1, "len"    # I

    .line 242
    new-instance v0, Ljava/nio/charset/CoderResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ljava/nio/charset/CoderResult;-><init>(IILjava/nio/charset/CoderResult$1;)V

    return-object v0
.end method