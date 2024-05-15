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
        "Lsun/util/locale/LocaleObjectCache",
        "<",
        "Lsun/util/locale/BaseLocale$Key;",
        "Lsun/util/locale/BaseLocale;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/util/locale/BaseLocale$Cache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/util/locale/BaseLocale$Cache;->-assertionsDisabled:Z

    .line 294
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 296
    invoke-direct {p0}, Lsun/util/locale/LocaleObjectCache;-><init>()V

    .line 297
    return-void
.end method


# virtual methods
.method protected bridge synthetic createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 309
    check-cast p1, Lsun/util/locale/BaseLocale$Key;

    invoke-virtual {p0, p1}, Lsun/util/locale/BaseLocale$Cache;->createObject(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    return-object v0
.end method

.method protected createObject(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale;
    .registers 8
    .param p1, "key"    # Lsun/util/locale/BaseLocale$Key;

    .prologue
    .line 311
    new-instance v0, Lsun/util/locale/BaseLocale;

    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-get0(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-get2(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 312
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-get1(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-get3(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 311
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale;)V

    return-object v0
.end method

.method protected bridge synthetic normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 299
    check-cast p1, Lsun/util/locale/BaseLocale$Key;

    invoke-virtual {p0, p1}, Lsun/util/locale/BaseLocale$Cache;->normalizeKey(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;

    move-result-object v0

    return-object v0
.end method

.method protected normalizeKey(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;
    .registers 3
    .param p1, "key"    # Lsun/util/locale/BaseLocale$Key;

    .prologue
    .line 301
    sget-boolean v0, Lsun/util/locale/BaseLocale$Cache;->-assertionsDisabled:Z

    if-nez v0, :cond_32

    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-get0(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 302
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-get2(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 301
    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 303
    :cond_1e
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-get1(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 304
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-get3(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 306
    :cond_32
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->normalize(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;

    move-result-object v0

    return-object v0
.end method
