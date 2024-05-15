.class public Lsun/util/locale/UnicodeLocaleExtension;
.super Lsun/util/locale/Extension;
.source "UnicodeLocaleExtension.java"


# static fields
.field public static final blacklist CA_JAPANESE:Lsun/util/locale/UnicodeLocaleExtension;

.field public static final blacklist NU_THAI:Lsun/util/locale/UnicodeLocaleExtension;

.field public static final blacklist SINGLETON:C = 'u'


# instance fields
.field private final blacklist attributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist keywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 48
    new-instance v0, Lsun/util/locale/UnicodeLocaleExtension;

    const-string v1, "ca"

    const-string v2, "japanese"

    invoke-direct {v0, v1, v2}, Lsun/util/locale/UnicodeLocaleExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lsun/util/locale/UnicodeLocaleExtension;->CA_JAPANESE:Lsun/util/locale/UnicodeLocaleExtension;

    .line 50
    new-instance v0, Lsun/util/locale/UnicodeLocaleExtension;

    const-string v1, "nu"

    const-string v2, "thai"

    invoke-direct {v0, v1, v2}, Lsun/util/locale/UnicodeLocaleExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lsun/util/locale/UnicodeLocaleExtension;->NU_THAI:Lsun/util/locale/UnicodeLocaleExtension;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x75

    invoke-direct {p0, v1, v0}, Lsun/util/locale/Extension;-><init>(CLjava/lang/String;)V

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    .line 56
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    .line 57
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/SortedSet;Ljava/util/SortedMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "attributes":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    .local p2, "keywords":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0x75

    invoke-direct {p0, v0}, Lsun/util/locale/Extension;-><init>(C)V

    .line 61
    if-eqz p1, :cond_a

    .line 62
    iput-object p1, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    goto :goto_10

    .line 64
    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    .line 66
    :goto_10
    if-eqz p2, :cond_15

    .line 67
    iput-object p2, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    goto :goto_1b

    .line 69
    :cond_15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    .line 72
    :goto_1b
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    .line 73
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "-"

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    .local v2, "attribute":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .end local v2    # "attribute":Ljava/lang/String;
    goto :goto_36

    .line 77
    :cond_4b
    iget-object v1, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 78
    .local v2, "keyword":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 79
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 81
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7f

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .end local v2    # "keyword":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_7f
    goto :goto_55

    .line 86
    :cond_80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsun/util/locale/UnicodeLocaleExtension;->setValue(Ljava/lang/String;)V

    .line 88
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_88
    return-void
.end method

.method public static blacklist isAttribute(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 115
    .local v0, "len":I
    const/4 v1, 0x3

    if-lt v0, v1, :cond_13

    const/16 v1, 0x8

    if-gt v0, v1, :cond_13

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public static blacklist isKey(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static blacklist isSingletonChar(C)Z
    .registers 3
    .param p0, "c"    # C

    .line 109
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v0

    const/16 v1, 0x75

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist isTypeSubtag(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 126
    .local v0, "len":I
    const/4 v1, 0x3

    if-lt v0, v1, :cond_13

    const/16 v1, 0x8

    if-gt v0, v1, :cond_13

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method


# virtual methods
.method public bridge synthetic blacklist getID()Ljava/lang/String;
    .registers 2

    .line 42
    invoke-super {p0}, Lsun/util/locale/Extension;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getKey()C
    .registers 2

    .line 42
    invoke-super {p0}, Lsun/util/locale/Extension;->getKey()C

    move-result v0

    return v0
.end method

.method public blacklist getUnicodeLocaleAttributes()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne v0, v1, :cond_9

    .line 92
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    return-object v0

    .line 94
    :cond_9
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnicodeLocaleKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    if-ne v0, v1, :cond_b

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 101
    :cond_b
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "unicodeLocaleKey"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic blacklist getValue()Ljava/lang/String;
    .registers 2

    .line 42
    invoke-super {p0}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 42
    invoke-super {p0}, Lsun/util/locale/Extension;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
