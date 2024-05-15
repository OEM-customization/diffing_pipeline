.class final Ljava/util/Locale$LocaleKey;
.super Ljava/lang/Object;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocaleKey"
.end annotation


# instance fields
.field private final greylist-max-o base:Lsun/util/locale/BaseLocale;

.field private final greylist-max-o exts:Lsun/util/locale/LocaleExtensions;

.field private final greylist-max-o hash:I


# direct methods
.method private constructor greylist-max-o <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V
    .registers 5
    .param p1, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p2, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    iput-object p1, p0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    .line 857
    iput-object p2, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    .line 860
    invoke-virtual {p1}, Lsun/util/locale/BaseLocale;->hashCode()I

    move-result v0

    .line 861
    .local v0, "h":I
    iget-object v1, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    if-eqz v1, :cond_14

    .line 862
    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 864
    :cond_14
    iput v0, p0, Ljava/util/Locale$LocaleKey;->hash:I

    .line 865
    return-void
.end method

.method synthetic constructor blacklist <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale$1;)V
    .registers 4
    .param p1, "x0"    # Lsun/util/locale/BaseLocale;
    .param p2, "x1"    # Lsun/util/locale/LocaleExtensions;
    .param p3, "x2"    # Ljava/util/Locale$1;

    .line 850
    invoke-direct {p0, p1, p2}, Ljava/util/Locale$LocaleKey;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V

    return-void
.end method

.method static synthetic blacklist access$200(Ljava/util/Locale$LocaleKey;)Lsun/util/locale/BaseLocale;
    .registers 2
    .param p0, "x0"    # Ljava/util/Locale$LocaleKey;

    .line 850
    iget-object v0, p0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    return-object v0
.end method

.method static synthetic blacklist access$300(Ljava/util/Locale$LocaleKey;)Lsun/util/locale/LocaleExtensions;
    .registers 2
    .param p0, "x0"    # Ljava/util/Locale$LocaleKey;

    .line 850
    iget-object v0, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 869
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 870
    return v0

    .line 872
    :cond_4
    instance-of v1, p1, Ljava/util/Locale$LocaleKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 873
    return v2

    .line 875
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/Locale$LocaleKey;

    .line 876
    .local v1, "other":Ljava/util/Locale$LocaleKey;
    iget v3, p0, Ljava/util/Locale$LocaleKey;->hash:I

    iget v4, v1, Ljava/util/Locale$LocaleKey;->hash:I

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    iget-object v4, v1, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3, v4}, Lsun/util/locale/BaseLocale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_30

    .line 879
    :cond_1e
    iget-object v3, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    if-nez v3, :cond_29

    .line 880
    iget-object v3, v1, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    if-nez v3, :cond_27

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    return v0

    .line 882
    :cond_29
    iget-object v0, v1, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v3, v0}, Lsun/util/locale/LocaleExtensions;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 877
    :cond_30
    :goto_30
    return v2
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 887
    iget v0, p0, Ljava/util/Locale$LocaleKey;->hash:I

    return v0
.end method
