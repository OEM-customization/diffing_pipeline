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
.field private greylist-max-o cause:Ljava/lang/Throwable;

.field private volatile greylist-max-o expirationTime:J

.field private greylist-max-o format:Ljava/lang/String;

.field private greylist-max-o hashCodeCache:I

.field private volatile greylist-max-o loadTime:J

.field private greylist-max-o loaderRef:Ljava/util/ResourceBundle$LoaderReference;

.field private greylist-max-o locale:Ljava/util/Locale;

.field private greylist-max-o name:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .registers 6
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    .line 567
    iput-object p2, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    .line 568
    if-nez p3, :cond_d

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    goto :goto_18

    .line 571
    :cond_d
    new-instance v0, Ljava/util/ResourceBundle$LoaderReference;

    # getter for: Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {}, Ljava/util/ResourceBundle;->access$200()Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p3, v1, p0}, Ljava/util/ResourceBundle$LoaderReference;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    iput-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    .line 573
    :goto_18
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->calculateHashCode()V

    .line 574
    return-void
.end method

.method static synthetic blacklist access$400(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;
    .registers 2
    .param p0, "x0"    # Ljava/util/ResourceBundle$CacheKey;

    .line 538
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$500(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "x0"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 538
    invoke-direct {p0, p1}, Ljava/util/ResourceBundle$CacheKey;->setCause(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist access$600(Ljava/util/ResourceBundle$CacheKey;)J
    .registers 3
    .param p0, "x0"    # Ljava/util/ResourceBundle$CacheKey;

    .line 538
    iget-wide v0, p0, Ljava/util/ResourceBundle$CacheKey;->expirationTime:J

    return-wide v0
.end method

.method static synthetic blacklist access$602(Ljava/util/ResourceBundle$CacheKey;J)J
    .registers 3
    .param p0, "x0"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "x1"    # J

    .line 538
    iput-wide p1, p0, Ljava/util/ResourceBundle$CacheKey;->expirationTime:J

    return-wide p1
.end method

.method static synthetic blacklist access$700(Ljava/util/ResourceBundle$CacheKey;)J
    .registers 3
    .param p0, "x0"    # Ljava/util/ResourceBundle$CacheKey;

    .line 538
    iget-wide v0, p0, Ljava/util/ResourceBundle$CacheKey;->loadTime:J

    return-wide v0
.end method

.method static synthetic blacklist access$702(Ljava/util/ResourceBundle$CacheKey;J)J
    .registers 3
    .param p0, "x0"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "x1"    # J

    .line 538
    iput-wide p1, p0, Ljava/util/ResourceBundle$CacheKey;->loadTime:J

    return-wide p1
.end method

.method private greylist-max-o calculateHashCode()V
    .registers 4

    .line 643
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    .line 644
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    .line 645
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 646
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_22

    .line 647
    iget v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iput v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    .line 649
    :cond_22
    return-void
.end method

.method private greylist-max-o getCause()Ljava/lang/Throwable;
    .registers 2

    .line 688
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method private greylist-max-o setCause(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 676
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    if-nez v0, :cond_7

    .line 677
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    goto :goto_d

    .line 681
    :cond_7
    instance-of v0, v0, Ljava/lang/ClassNotFoundException;

    if-eqz v0, :cond_d

    .line 682
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    .line 685
    :cond_d
    :goto_d
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 5

    .line 653
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle$CacheKey;

    .line 654
    .local v0, "clone":Ljava/util/ResourceBundle$CacheKey;
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-eqz v1, :cond_1d

    .line 655
    new-instance v1, Ljava/util/ResourceBundle$LoaderReference;

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    invoke-virtual {v2}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    .line 656
    # getter for: Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {}, Ljava/util/ResourceBundle;->access$200()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljava/util/ResourceBundle$LoaderReference;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    iput-object v1, v0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    .line 659
    :cond_1d
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;
    :try_end_20
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_20} :catch_21

    .line 660
    return-object v0

    .line 661
    .end local v0    # "clone":Ljava/util/ResourceBundle$CacheKey;
    :catch_21
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 605
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 606
    return v0

    .line 609
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    move-object v2, p1

    check-cast v2, Ljava/util/ResourceBundle$CacheKey;

    .line 611
    .local v2, "otherEntry":Ljava/util/ResourceBundle$CacheKey;
    iget v3, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    iget v4, v2, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    if-eq v3, v4, :cond_f

    .line 612
    return v1

    .line 615
    :cond_f
    iget-object v3, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    iget-object v4, v2, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 616
    return v1

    .line 619
    :cond_1a
    iget-object v3, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    iget-object v4, v2, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 620
    return v1

    .line 623
    :cond_25
    iget-object v3, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-nez v3, :cond_30

    .line 624
    iget-object v3, v2, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-nez v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    .line 626
    :cond_30
    iget-object v3, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    invoke-virtual {v3}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    .line 627
    .local v3, "loader":Ljava/lang/ClassLoader;
    iget-object v4, v2, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-eqz v4, :cond_47

    if-eqz v3, :cond_47

    iget-object v4, v2, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    .line 632
    invoke-virtual {v4}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;

    move-result-object v4
    :try_end_44
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_44} :catch_49
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_44} :catch_49

    if-ne v3, v4, :cond_47

    goto :goto_48

    :cond_47
    move v0, v1

    .line 627
    :goto_48
    return v0

    .line 633
    .end local v2    # "otherEntry":Ljava/util/ResourceBundle$CacheKey;
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    :catch_49
    move-exception v0

    .line 635
    return v1
.end method

.method greylist-max-o getFormat()Ljava/lang/String;
    .registers 2

    .line 668
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 601
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method greylist-max-o getLocale()Ljava/util/Locale;
    .registers 2

    .line 589
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method greylist-max-o getName()Ljava/lang/String;
    .registers 2

    .line 577
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 639
    iget v0, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    return v0
.end method

.method greylist-max-o setFormat(Ljava/lang/String;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/String;

    .line 672
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    .line 673
    return-void
.end method

.method greylist-max-o setLocale(Ljava/util/Locale;)Ljava/util/ResourceBundle$CacheKey;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

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

.method greylist-max-o setName(Ljava/lang/String;)Ljava/util/ResourceBundle$CacheKey;
    .registers 3
    .param p1, "baseName"    # Ljava/lang/String;

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

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 692
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

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

    if-eqz v1, :cond_30

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    .line 697
    :cond_30
    const-string v0, "\"\""

    .line 700
    :cond_32
    :goto_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheKey["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ldr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "(format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
