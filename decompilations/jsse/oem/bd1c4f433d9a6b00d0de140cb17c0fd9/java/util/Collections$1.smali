.class final Ljava/util/Collections$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections;->singletonIterator(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private hasNext:Z

.field final synthetic val$e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Ljava/util/Collections$1;->val$e:Ljava/lang/Object;

    .line 4717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4718
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    .line 1
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 4734
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4735
    iget-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    if-eqz v0, :cond_f

    .line 4736
    iget-object v0, p0, Ljava/util/Collections$1;->val$e:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4737
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    .line 4739
    :cond_f
    return-void
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 4720
    iget-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 4723
    iget-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    if-eqz v0, :cond_a

    .line 4724
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    .line 4725
    iget-object v0, p0, Ljava/util/Collections$1;->val$e:Ljava/lang/Object;

    return-object v0

    .line 4727
    :cond_a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 4730
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
