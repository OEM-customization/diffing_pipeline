.class final Ljava/nio/charset/Charset$1;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/charset/Charset;->providers()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/nio/charset/spi/CharsetProvider;",
        ">;"
    }
.end annotation


# instance fields
.field i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/charset/spi/CharsetProvider;",
            ">;"
        }
    .end annotation
.end field

.field next:Ljava/nio/charset/spi/CharsetProvider;

.field sl:Ljava/util/ServiceLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ServiceLoader",
            "<",
            "Ljava/nio/charset/spi/CharsetProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    const-class v0, Ljava/nio/charset/spi/CharsetProvider;

    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 361
    iput-object v0, p0, Ljava/nio/charset/Charset$1;->sl:Ljava/util/ServiceLoader;

    .line 363
    iget-object v0, p0, Ljava/nio/charset/Charset$1;->sl:Ljava/util/ServiceLoader;

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/charset/Charset$1;->i:Ljava/util/Iterator;

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/Charset$1;->next:Ljava/nio/charset/spi/CharsetProvider;

    .line 1
    return-void
.end method

.method private getNext()Z
    .registers 3

    .prologue
    .line 368
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/nio/charset/Charset$1;->next:Ljava/nio/charset/spi/CharsetProvider;

    if-nez v1, :cond_23

    .line 370
    :try_start_4
    iget-object v1, p0, Ljava/nio/charset/Charset$1;->i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    .line 371
    const/4 v1, 0x0

    return v1

    .line 372
    :cond_e
    iget-object v1, p0, Ljava/nio/charset/Charset$1;->i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/spi/CharsetProvider;

    iput-object v1, p0, Ljava/nio/charset/Charset$1;->next:Ljava/nio/charset/spi/CharsetProvider;
    :try_end_18
    .catch Ljava/util/ServiceConfigurationError; {:try_start_4 .. :try_end_18} :catch_19

    goto :goto_0

    .line 373
    :catch_19
    move-exception v0

    .line 374
    .local v0, "sce":Ljava/util/ServiceConfigurationError;
    invoke-virtual {v0}, Ljava/util/ServiceConfigurationError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 378
    throw v0

    .line 381
    .end local v0    # "sce":Ljava/util/ServiceConfigurationError;
    :cond_23
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/nio/charset/Charset$1;->getNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 388
    invoke-virtual {p0}, Ljava/nio/charset/Charset$1;->next()Ljava/nio/charset/spi/CharsetProvider;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/nio/charset/spi/CharsetProvider;
    .registers 3

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/nio/charset/Charset$1;->getNext()Z

    move-result v1

    if-nez v1, :cond_c

    .line 390
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 391
    :cond_c
    iget-object v0, p0, Ljava/nio/charset/Charset$1;->next:Ljava/nio/charset/spi/CharsetProvider;

    .line 392
    .local v0, "n":Ljava/nio/charset/spi/CharsetProvider;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/nio/charset/Charset$1;->next:Ljava/nio/charset/spi/CharsetProvider;

    .line 393
    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 397
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
