.class Ljava/util/ResourceBundle$CacheKey;
.super Ljava/lang/Object;
.source "ResourceBundle.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheKey"
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private volatile expirationTime:J

.field private format:Ljava/lang/String;

.field private hashCodeCache:I

.field private volatile loadTime:J

.field private loaderRef:Ljava/util/ResourceBundle$LoaderReference;

.field private locale:Ljava/util/Locale;

.field private name:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/util/ResourceBundle$CacheKey;)J
    .registers 3
    .param p0, "-this"    # Ljava/util/ResourceBundle$CacheKey;

    .prologue
    iget-wide v0, p0, Ljava/util/ResourceBundle$CacheKey;->expirationTime:J

    return-wide v0
.end method

.method static synthetic -get1(Ljava/util/ResourceBundle$CacheKey;)J
    .registers 3
    .param p0, "-this"    # Ljava/util/ResourceBundle$CacheKey;

    .prologue
    iget-wide v0, p0, Ljava/util/ResourceBundle$CacheKey;->loadTime:J

    return-wide v0
.end method

.method static synthetic -set0(Ljava/util/ResourceBundle$CacheKey;J)J
    .registers 4
    .param p0, "-this"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Ljava/util/ResourceBundle$CacheKey;->expirationTime:J

    return-wide p1
.end method

.method static synthetic -set1(Ljava/util/ResourceBundle$CacheKey;J)J
    .registers 4
    .param p0, "-this"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Ljava/util/ResourceBundle$CacheKey;->loadTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;
    .registers 2
    .param p0, "-this"    # Ljava/util/ResourceBundle$CacheKey;

    .prologue
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "-this"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/ResourceBundle$CacheKey;->setCause(Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .registers 6
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v0, 0x0

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    .line 567
    iput-object p2, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    .line 568
    if-nez p3, :cond_10

    .line 569
    iput-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    .line 573
    :goto_c
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->calculateHashCode()V

    .line 574
    return-void

    .line 571
    :cond_10
    new-instance v0, Ljava/util/ResourceBundle$LoaderReference;

    invoke-static {}, Ljava/util/ResourceBundle;->-get0()Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p3, v1, p0}, Ljava/util/ResourceBundle$LoaderReference;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    iput-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    goto :goto_c
.end method

.method private calculateHashCode()V
    .registers 4

    .prologue
    .line 643
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    iput v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    .line 644
    iget v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iput v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    .line 645
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 646
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_24

    .line 647
    iget v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iput v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    .line 649
    :cond_24
    return-void
.end method

.method private getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 688
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method private setCause(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 676
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    if-nez v0, :cond_7

    .line 677
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    .line 685
    :cond_6
    :goto_6
    return-void

    .line 681
    :cond_7
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/ClassNotFoundException;

    if-eqz v0, :cond_6

    .line 682
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    goto :goto_6
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 653
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle$CacheKey;

    .line 654
    .local v0, "clone":Ljava/util/ResourceBundle$CacheKey;
    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-eqz v2, :cond_1d

    .line 655
    new-instance v3, Ljava/util/ResourceBundle$LoaderReference;

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    invoke-virtual {v2}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    .line 656
    invoke-static {}, Ljava/util/ResourceBundle;->-get0()Ljava/lang/ref/ReferenceQueue;

    move-result-object v4

    .line 655
    invoke-direct {v3, v2, v4, v0}, Ljava/util/ResourceBundle$LoaderReference;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    iput-object v3, v0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    .line 659
    :cond_1d
    const/4 v2, 0x0

    iput-object v2, v0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;
    :try_end_20
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_20} :catch_21

    .line 660
    return-object v0

    .line 661
    .end local v0    # "clone":Ljava/util/ResourceBundle$CacheKey;
    :catch_21
    move-exception v1

    .line 663
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 605
    if-ne p0, p1, :cond_5

    .line 606
    return v4

    .line 609
    :cond_5
    :try_start_5
    move-object v0, p1

    check-cast v0, Ljava/util/ResourceBundle$CacheKey;

    move-object v3, v0

    .line 611
    .local v3, "otherEntry":Ljava/util/ResourceBundle$CacheKey;
    iget v6, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    iget v7, v3, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    if-eq v6, v7, :cond_10

    .line 612
    return v5

    .line 615
    :cond_10
    iget-object v6, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    iget-object v7, v3, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 616
    return v5

    .line 619
    :cond_1b
    iget-object v6, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    iget-object v7, v3, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 620
    return v5

    .line 623
    :cond_26
    iget-object v6, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-nez v6, :cond_31

    .line 624
    iget-object v6, v3, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-nez v6, :cond_2f

    :goto_2e
    return v4

    :cond_2f
    move v4, v5

    goto :goto_2e

    .line 626
    :cond_31
    iget-object v6, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    invoke-virtual {v6}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    .line 627
    .local v2, "loader":Ljava/lang/ClassLoader;
    iget-object v6, v3, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-eqz v6, :cond_4a

    .line 631
    if-eqz v2, :cond_4a

    .line 632
    iget-object v6, v3, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    invoke-virtual {v6}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_44} :catch_4c
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_44} :catch_4c

    move-result-object v6

    if-ne v2, v6, :cond_48

    .line 627
    :goto_47
    return v4

    :cond_48
    move v4, v5

    .line 632
    goto :goto_47

    :cond_4a
    move v4, v5

    .line 627
    goto :goto_47

    .line 633
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    .end local v3    # "otherEntry":Ljava/util/ResourceBundle$CacheKey;
    :catch_4c
    move-exception v1

    .line 635
    .local v1, "e":Ljava/lang/RuntimeException;
    return v5
.end method

.method getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 668
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    return-object v0
.end method

.method getLoader()Ljava/lang/ClassLoader;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 601
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-eqz v1, :cond_d

    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    invoke-virtual {v0}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    :cond_d
    return-object v0
.end method

.method getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 589
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 639
    iget v0, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    return v0
.end method

.method setFormat(Ljava/lang/String;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 672
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    .line 673
    return-void
.end method

.method setLocale(Ljava/util/Locale;)Ljava/util/ResourceBundle$CacheKey;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 593
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 594
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    .line 595
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->calculateHashCode()V

    .line 597
    :cond_d
    return-object p0
.end method

.method setName(Ljava/lang/String;)Ljava/util/ResourceBundle$CacheKey;
    .registers 3
    .param p1, "baseName"    # Ljava/lang/String;

    .prologue
    .line 581
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 582
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    .line 583
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->calculateHashCode()V

    .line 585
    :cond_d
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 692
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "l":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_32

    .line 694
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_77

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    :cond_32
    :goto_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CacheKey["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ldr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 701
    const-string/jumbo v2, "(format="

    .line 700
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 701
    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    .line 700
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 701
    const-string/jumbo v2, ")]"

    .line 700
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 697
    :cond_77
    const-string/jumbo v0, "\"\""

    goto :goto_32
.end method
