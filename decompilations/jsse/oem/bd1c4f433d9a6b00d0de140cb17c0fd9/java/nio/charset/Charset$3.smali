.class final Ljava/nio/charset/Charset$3;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/charset/Charset;->availableCharsets()Ljava/util/SortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/SortedMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/nio/charset/Charset;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 627
    invoke-virtual {p0}, Ljava/nio/charset/Charset$3;->run()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/SortedMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 629
    new-instance v4, Ljava/util/TreeMap;

    .line 630
    sget-object v5, Lsun/misc/ASCIICaseInsensitiveComparator;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 629
    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 631
    .local v4, "m":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    invoke-static {}, Llibcore/icu/NativeConverter;->getAvailableCharsetNames()[Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    array-length v7, v6

    :goto_d
    if-ge v5, v7, :cond_1f

    aget-object v1, v6, v5

    .line 632
    .local v1, "charsetName":Ljava/lang/String;
    invoke-static {v1}, Llibcore/icu/NativeConverter;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 633
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 637
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .end local v1    # "charsetName":Ljava/lang/String;
    :cond_1f
    invoke-static {}, Ljava/nio/charset/Charset;->-wrap0()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 638
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/spi/CharsetProvider;

    .line 639
    .local v2, "cp":Ljava/nio/charset/spi/CharsetProvider;
    invoke-virtual {v2}, Ljava/nio/charset/spi/CharsetProvider;->charsets()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/nio/charset/Charset;->-wrap1(Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_23

    .line 641
    .end local v2    # "cp":Ljava/nio/charset/spi/CharsetProvider;
    :cond_37
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v5

    return-object v5
.end method
