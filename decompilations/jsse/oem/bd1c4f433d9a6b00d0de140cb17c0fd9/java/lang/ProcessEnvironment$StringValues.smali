.class Ljava/lang/ProcessEnvironment$StringValues;
.super Ljava/util/AbstractCollection;
.source "ProcessEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/lang/ProcessEnvironment$StringValues;)Ljava/util/Collection;
    .registers 2
    .param p0, "-this"    # Ljava/lang/ProcessEnvironment$StringValues;

    .prologue
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ProcessEnvironment$Value;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 379
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 385
    instance-of v0, p1, Ljava/lang/ProcessEnvironment$StringValues;

    if-eqz v0, :cond_f

    .line 386
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    check-cast p1, Ljava/lang/ProcessEnvironment$StringValues;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 385
    :goto_e
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    new-instance v0, Ljava/lang/ProcessEnvironment$StringValues$1;

    invoke-direct {v0, p0}, Ljava/lang/ProcessEnvironment$StringValues$1;-><init>(Ljava/lang/ProcessEnvironment$StringValues;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 382
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
