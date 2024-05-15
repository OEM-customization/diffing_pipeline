.class Ljava/util/ImmutableCollections$Set2$1;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ImmutableCollections$Set2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private blacklist idx:I

.field final synthetic blacklist this$0:Ljava/util/ImmutableCollections$Set2;


# direct methods
.method constructor blacklist <init>(Ljava/util/ImmutableCollections$Set2;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/ImmutableCollections$Set2;

    .line 408
    .local p0, "this":Ljava/util/ImmutableCollections$Set2$1;, "Ljava/util/ImmutableCollections$Set2$1;"
    iput-object p1, p0, Ljava/util/ImmutableCollections$Set2$1;->this$0:Ljava/util/ImmutableCollections$Set2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/ImmutableCollections$Set2$1;->idx:I

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasNext()Z
    .registers 3

    .line 413
    .local p0, "this":Ljava/util/ImmutableCollections$Set2$1;, "Ljava/util/ImmutableCollections$Set2$1;"
    iget v0, p0, Ljava/util/ImmutableCollections$Set2$1;->idx:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 418
    .local p0, "this":Ljava/util/ImmutableCollections$Set2$1;, "Ljava/util/ImmutableCollections$Set2$1;"
    iget v0, p0, Ljava/util/ImmutableCollections$Set2$1;->idx:I

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 419
    iput v1, p0, Ljava/util/ImmutableCollections$Set2$1;->idx:I

    .line 420
    iget-object v0, p0, Ljava/util/ImmutableCollections$Set2$1;->this$0:Ljava/util/ImmutableCollections$Set2;

    iget-object v0, v0, Ljava/util/ImmutableCollections$Set2;->e0:Ljava/lang/Object;

    return-object v0

    .line 421
    :cond_c
    if-ne v0, v1, :cond_16

    .line 422
    const/4 v0, 0x2

    iput v0, p0, Ljava/util/ImmutableCollections$Set2$1;->idx:I

    .line 423
    iget-object v0, p0, Ljava/util/ImmutableCollections$Set2$1;->this$0:Ljava/util/ImmutableCollections$Set2;

    iget-object v0, v0, Ljava/util/ImmutableCollections$Set2;->e1:Ljava/lang/Object;

    return-object v0

    .line 425
    :cond_16
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
