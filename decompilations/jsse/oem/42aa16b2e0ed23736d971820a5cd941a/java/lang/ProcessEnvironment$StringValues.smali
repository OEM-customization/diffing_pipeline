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
        "Ljava/util/AbstractCollection<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;)V"
        }
    .end annotation

    .line 366
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ProcessEnvironment$Value;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    return-void
.end method

.method static synthetic blacklist access$700(Ljava/lang/ProcessEnvironment$StringValues;)Ljava/util/Collection;
    .registers 2
    .param p0, "x0"    # Ljava/lang/ProcessEnvironment$StringValues;

    .line 362
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api clear()V
    .registers 2

    .line 369
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 385
    instance-of v0, p1, Ljava/lang/ProcessEnvironment$StringValues;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    move-object v1, p1

    check-cast v1, Ljava/lang/ProcessEnvironment$StringValues;

    iget-object v1, v1, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    .line 386
    invoke-interface {v0, v1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 385
    :goto_14
    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 388
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isEmpty()Z
    .registers 2

    .line 368
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 371
    new-instance v0, Ljava/lang/ProcessEnvironment$StringValues$1;

    invoke-direct {v0, p0}, Ljava/lang/ProcessEnvironment$StringValues$1;-><init>(Ljava/lang/ProcessEnvironment$StringValues;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 382
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 367
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
