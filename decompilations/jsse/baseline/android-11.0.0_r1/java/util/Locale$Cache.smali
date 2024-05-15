.class Ljava/util/Locale$Cache;
.super Lsun/util/locale/LocaleObjectCache;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/util/locale/LocaleObjectCache<",
        "Ljava/util/Locale$LocaleKey;",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 841
    invoke-direct {p0}, Lsun/util/locale/LocaleObjectCache;-><init>()V

    .line 842
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Locale$1;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Locale$1;

    .line 840
    invoke-direct {p0}, Ljava/util/Locale$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 840
    check-cast p1, Ljava/util/Locale$LocaleKey;

    invoke-virtual {p0, p1}, Ljava/util/Locale$Cache;->createObject(Ljava/util/Locale$LocaleKey;)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o createObject(Ljava/util/Locale$LocaleKey;)Ljava/util/Locale;
    .registers 6
    .param p1, "key"    # Ljava/util/Locale$LocaleKey;

    .line 846
    new-instance v0, Ljava/util/Locale;

    # getter for: Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;
    invoke-static {p1}, Ljava/util/Locale$LocaleKey;->access$200(Ljava/util/Locale$LocaleKey;)Lsun/util/locale/BaseLocale;

    move-result-object v1

    # getter for: Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;
    invoke-static {p1}, Ljava/util/Locale$LocaleKey;->access$300(Ljava/util/Locale$LocaleKey;)Lsun/util/locale/LocaleExtensions;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale$1;)V

    return-object v0
.end method
