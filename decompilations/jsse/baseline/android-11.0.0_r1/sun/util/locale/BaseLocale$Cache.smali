.class Lsun/util/locale/BaseLocale$Cache;
.super Lsun/util/locale/LocaleObjectCache;
.source "BaseLocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/locale/BaseLocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/util/locale/LocaleObjectCache<",
        "Lsun/util/locale/BaseLocale$Key;",
        "Lsun/util/locale/BaseLocale;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 294
    const-class v0, Lsun/util/locale/BaseLocale;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 296
    invoke-direct {p0}, Lsun/util/locale/LocaleObjectCache;-><init>()V

    .line 297
    return-void
.end method


# virtual methods
.method protected bridge synthetic greylist-max-o createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 294
    check-cast p1, Lsun/util/locale/BaseLocale$Key;

    invoke-virtual {p0, p1}, Lsun/util/locale/BaseLocale$Cache;->createObject(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o createObject(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale;
    .registers 9
    .param p1, "key"    # Lsun/util/locale/BaseLocale$Key;

    .line 311
    new-instance v6, Lsun/util/locale/BaseLocale;

    # getter for: Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/ref/SoftReference;
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->access$100(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    # getter for: Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/ref/SoftReference;
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->access$200(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 312
    # getter for: Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/ref/SoftReference;
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->access$300(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    # getter for: Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/ref/SoftReference;
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->access$400(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale$1;)V

    .line 311
    return-object v6
.end method

.method protected bridge synthetic greylist-max-o normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 294
    check-cast p1, Lsun/util/locale/BaseLocale$Key;

    invoke-virtual {p0, p1}, Lsun/util/locale/BaseLocale$Cache;->normalizeKey(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o normalizeKey(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;
    .registers 3
    .param p1, "key"    # Lsun/util/locale/BaseLocale$Key;

    .line 301
    nop

    .line 306
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->normalize(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;

    move-result-object v0

    return-object v0
.end method
