.class public final Lsun/util/locale/LocaleMatcher;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist filter(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;
    .registers 9
    .param p2, "mode"    # Ljava/util/Locale$FilteringMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/util/Locale$FilteringMode;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 51
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_50

    .line 56
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 58
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v2    # "locale":Ljava/util/Locale;
    goto :goto_16

    .line 62
    :cond_2a
    invoke-static {p0, v0, p2}, Lsun/util/locale/LocaleMatcher;->filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, "filteredTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .local v2, "filteredLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 67
    .local v4, "tag":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v4    # "tag":Ljava/lang/String;
    goto :goto_3b

    .line 70
    :cond_4f
    return-object v2

    .line 52
    .end local v0    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "filteredTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "filteredLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :cond_50
    :goto_50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static blacklist filterBasic(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale$LanguageRange;

    .line 116
    .local v2, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v2}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "range":Ljava/lang/String;
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 120
    :cond_27
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 121
    .local v5, "tag":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 123
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .line 124
    .local v6, "len":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v6, :cond_53

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_5c

    .line 125
    :cond_53
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5c

    .line 126
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "len":I
    :cond_5c
    goto :goto_2b

    .line 131
    .end local v2    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v3    # "range":Ljava/lang/String;
    :cond_5d
    goto :goto_9

    .line 133
    :cond_5e
    return-object v0
.end method

.method private static blacklist filterExtended(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale$LanguageRange;

    .line 140
    .local v2, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v2}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "range":Ljava/lang/String;
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 144
    :cond_27
    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "rangeSubtags":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_31
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 146
    .local v8, "tag":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 147
    invoke-virtual {v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, "tagSubtags":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v11, v6, v10

    aget-object v12, v9, v10

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_59

    aget-object v10, v6, v10

    .line 149
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_59

    .line 150
    goto :goto_31

    .line 153
    :cond_59
    const/4 v10, 0x1

    .line 154
    .local v10, "rangeIndex":I
    const/4 v11, 0x1

    .line 156
    .local v11, "tagIndex":I
    :goto_5b
    array-length v12, v6

    if-ge v10, v12, :cond_90

    array-length v12, v9

    if-ge v11, v12, :cond_90

    .line 158
    aget-object v12, v6, v10

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6c

    .line 159
    add-int/lit8 v10, v10, 0x1

    goto :goto_5b

    .line 160
    :cond_6c
    aget-object v12, v6, v10

    aget-object v13, v9, v11

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    .line 161
    add-int/lit8 v10, v10, 0x1

    .line 162
    add-int/lit8 v11, v11, 0x1

    goto :goto_5b

    .line 163
    :cond_7b
    aget-object v12, v9, v11

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8d

    aget-object v12, v9, v11

    .line 164
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8d

    .line 165
    goto :goto_90

    .line 167
    :cond_8d
    add-int/lit8 v11, v11, 0x1

    goto :goto_5b

    .line 171
    :cond_90
    :goto_90
    array-length v12, v6

    if-ne v12, v10, :cond_9c

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9c

    .line 172
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "tagSubtags":[Ljava/lang/String;
    .end local v10    # "rangeIndex":I
    .end local v11    # "tagIndex":I
    :cond_9c
    goto :goto_31

    .line 175
    .end local v2    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v3    # "range":Ljava/lang/String;
    .end local v6    # "rangeSubtags":[Ljava/lang/String;
    :cond_9d
    goto/16 :goto_9

    .line 177
    :cond_9f
    return-object v0
.end method

.method public static blacklist filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;
    .registers 10
    .param p2, "mode"    # Ljava/util/Locale$FilteringMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Locale$FilteringMode;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9a

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_9a

    .line 81
    :cond_e
    sget-object v0, Ljava/util/Locale$FilteringMode;->EXTENDED_FILTERING:Ljava/util/Locale$FilteringMode;

    if-ne p2, v0, :cond_17

    .line 82
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->filterExtended(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 84
    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale$LanguageRange;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale$LanguageRange;

    .line 86
    .local v2, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v2}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "range":Ljava/lang/String;
    const-string v4, "*-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 88
    const-string v4, "-*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_42

    goto :goto_46

    .line 104
    :cond_42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 89
    :cond_46
    :goto_46
    sget-object v4, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    if-ne p2, v4, :cond_4f

    .line 90
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->filterExtended(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 91
    :cond_4f
    sget-object v4, Ljava/util/Locale$FilteringMode;->MAP_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    if-ne p2, v4, :cond_74

    .line 92
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_5f

    .line 93
    const-string v3, "*"

    goto :goto_67

    .line 95
    :cond_5f
    const-string v4, "-[*]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    :goto_67
    new-instance v4, Ljava/util/Locale$LanguageRange;

    invoke-virtual {v2}, Ljava/util/Locale$LanguageRange;->getWeight()D

    move-result-wide v5

    invoke-direct {v4, v3, v5, v6}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 98
    :cond_74
    sget-object v4, Ljava/util/Locale$FilteringMode;->REJECT_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    if-eq p2, v4, :cond_79

    .line 106
    .end local v2    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v3    # "range":Ljava/lang/String;
    :goto_78
    goto :goto_20

    .line 99
    .restart local v2    # "lr":Ljava/util/Locale$LanguageRange;
    .restart local v3    # "range":Ljava/lang/String;
    :cond_79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An extended range \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" found in REJECT_EXTENDED_RANGES mode."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    .end local v2    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v3    # "range":Ljava/lang/String;
    :cond_95
    invoke-static {v0, p1}, Lsun/util/locale/LocaleMatcher;->filterBasic(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 77
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale$LanguageRange;>;"
    :cond_9a
    :goto_9a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static blacklist getEquivalentForRegionAndVariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "range"    # Ljava/lang/String;

    .line 388
    invoke-static {p0}, Lsun/util/locale/LocaleMatcher;->getExtentionKeyIndex(Ljava/lang/String;)I

    move-result v0

    .line 390
    .local v0, "extensionKeyIndex":I
    sget-object v1, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 392
    .local v2, "subtag":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move v4, v3

    .local v4, "index":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_49

    .line 394
    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_29

    if-le v4, v0, :cond_29

    .line 396
    goto :goto_e

    .line 399
    :cond_29
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    .line 400
    .local v3, "len":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v3, :cond_3c

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_49

    .line 401
    :cond_3c
    sget-object v1, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    .line 403
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 401
    invoke-static {p0, v2, v1}, Lsun/util/locale/LocaleMatcher;->replaceFirstSubStringMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 406
    .end local v2    # "subtag":Ljava/lang/String;
    .end local v3    # "len":I
    .end local v4    # "index":I
    :cond_49
    goto :goto_e

    .line 408
    :cond_4a
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getEquivalentsForLanguage(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "range"    # Ljava/lang/String;

    .line 353
    move-object v0, p0

    .line 355
    .local v0, "r":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_54

    .line 356
    sget-object v1, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 357
    sget-object v1, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 363
    .local v1, "equiv":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lsun/util/locale/LocaleMatcher;->replaceFirstSubStringMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    return-object v3

    .line 365
    .end local v1    # "equiv":Ljava/lang/String;
    :cond_22
    sget-object v1, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 366
    sget-object v1, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 367
    .local v1, "equivs":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 368
    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_36
    array-length v4, v1

    if-ge v3, v4, :cond_44

    .line 369
    aget-object v4, v1, v3

    invoke-static {p0, v0, v4}, Lsun/util/locale/LocaleMatcher;->replaceFirstSubStringMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 368
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 372
    .end local v3    # "i":I
    :cond_44
    return-object v2

    .line 377
    .end local v1    # "equivs":[Ljava/lang/String;
    .end local v2    # "result":[Ljava/lang/String;
    :cond_45
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 378
    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4f

    .line 379
    goto :goto_54

    .line 381
    :cond_4f
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 382
    .end local v1    # "index":I
    goto :goto_1

    .line 384
    :cond_54
    :goto_54
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getExtentionKeyIndex(Ljava/lang/String;)I
    .registers 6
    .param p0, "s"    # Ljava/lang/String;

    .line 412
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 413
    .local v0, "c":[C
    const/high16 v1, -0x80000000

    .line 414
    .local v1, "index":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_7
    array-length v3, v0

    if-ge v2, v3, :cond_1a

    .line 415
    aget-char v3, v0, v2

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_17

    .line 416
    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_16

    .line 417
    return v1

    .line 419
    :cond_16
    move v1, v2

    .line 414
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 423
    .end local v2    # "i":I
    :cond_1a
    const/high16 v2, -0x80000000

    return v2
.end method

.method public static blacklist lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 182
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_37

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_37

    .line 187
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v0, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 189
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v3    # "locale":Ljava/util/Locale;
    goto :goto_17

    .line 193
    :cond_2b
    invoke-static {p0, v0}, Lsun/util/locale/LocaleMatcher;->lookupTag(Ljava/util/List;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "lookedUpTag":Ljava/lang/String;
    if-nez v2, :cond_32

    .line 196
    return-object v1

    .line 198
    :cond_32
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    return-object v1

    .line 183
    .end local v0    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "lookedUpTag":Ljava/lang/String;
    :cond_37
    :goto_37
    return-object v1
.end method

.method public static blacklist lookupTag(Ljava/util/List;Ljava/util/Collection;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 204
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7e

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_7e

    .line 208
    :cond_f
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale$LanguageRange;

    .line 209
    .local v2, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v2}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "range":Ljava/lang/String;
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 213
    goto :goto_13

    .line 216
    :cond_2c
    const-string v5, "\\p{Alnum}*"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "rangeForRegex":Ljava/lang/String;
    :goto_32
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7c

    .line 218
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 219
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 220
    invoke-virtual {v6, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 221
    return-object v6

    .line 223
    .end local v6    # "tag":Ljava/lang/String;
    :cond_53
    goto :goto_3c

    .line 226
    :cond_54
    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 227
    .local v6, "index":I
    if-ltz v6, :cond_79

    .line 228
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    if-ne v5, v8, :cond_7b

    .line 232
    nop

    .line 233
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_7b

    .line 236
    :cond_79
    const-string v4, ""

    .line 238
    .end local v6    # "index":I
    :cond_7b
    :goto_7b
    goto :goto_32

    .line 239
    .end local v2    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v3    # "range":Ljava/lang/String;
    .end local v4    # "rangeForRegex":Ljava/lang/String;
    :cond_7c
    goto :goto_13

    .line 241
    :cond_7d
    return-object v1

    .line 205
    :cond_7e
    :goto_7e
    return-object v1
.end method

.method public static blacklist mapEquivalents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    .line 429
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 430
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 432
    :cond_e
    if-eqz v0, :cond_bd

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto/16 :goto_bd

    .line 437
    :cond_18
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 438
    .local v1, "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 439
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_25

    .line 442
    :cond_39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale$LanguageRange;

    .line 444
    .local v4, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v4}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v5

    .line 445
    .local v5, "range":Ljava/lang/String;
    move-object v6, v5

    .line 446
    .local v6, "r":Ljava/lang/String;
    const/4 v7, 0x0

    .line 448
    .local v7, "hasEquivalent":Z
    :goto_54
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b6

    .line 449
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 450
    const/4 v7, 0x1

    .line 451
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 452
    .local v8, "equivalents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_b6

    .line 453
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 454
    .local v9, "len":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_75
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 455
    .local v11, "equivalent":Ljava/lang/String;
    new-instance v12, Ljava/util/Locale$LanguageRange;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 457
    invoke-virtual {v4}, Ljava/util/Locale$LanguageRange;->getWeight()D

    move-result-wide v14

    invoke-direct {v12, v13, v14, v15}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    .line 455
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v11    # "equivalent":Ljava/lang/String;
    goto :goto_75

    .line 459
    .end local v9    # "len":I
    :cond_a5
    goto :goto_b6

    .line 465
    .end local v8    # "equivalents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a6
    const/16 v8, 0x2d

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 466
    .local v8, "index":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_b0

    .line 467
    goto :goto_b6

    .line 469
    :cond_b0
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 470
    .end local v8    # "index":I
    goto :goto_54

    .line 472
    :cond_b6
    :goto_b6
    if-nez v7, :cond_bb

    .line 473
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    .end local v4    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v5    # "range":Ljava/lang/String;
    .end local v6    # "r":Ljava/lang/String;
    .end local v7    # "hasEquivalent":Z
    :cond_bb
    goto :goto_42

    .line 477
    :cond_bc
    return-object v2

    .line 433
    .end local v1    # "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    :cond_bd
    :goto_bd
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static blacklist parse(Ljava/lang/String;)Ljava/util/List;
    .registers 21
    .param p0, "ranges"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    .line 246
    const-string v0, " "

    const-string v1, ""

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 247
    .end local p0    # "ranges":Ljava/lang/String;
    .local v0, "ranges":Ljava/lang/String;
    const-string v1, "accept-language:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 248
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1f

    .line 247
    :cond_1e
    move-object v1, v0

    .line 251
    .end local v0    # "ranges":Ljava/lang/String;
    .local v1, "ranges":Ljava/lang/String;
    :goto_1f
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "langRanges":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    .line 253
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 254
    .local v4, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 256
    .local v0, "numOfRanges":I
    array-length v5, v2

    const/4 v6, 0x0

    move v7, v0

    move v0, v6

    .end local v0    # "numOfRanges":I
    .local v7, "numOfRanges":I
    :goto_37
    if-ge v0, v5, :cond_181

    aget-object v8, v2, v0

    .line 261
    .local v8, "range":Ljava/lang/String;
    const-string v9, ";q="

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    move v10, v9

    .local v10, "index":I
    const/4 v11, -0x1

    if-ne v9, v11, :cond_49

    .line 262
    move-object v9, v8

    .line 263
    .local v9, "r":Ljava/lang/String;
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .local v11, "w":D
    goto :goto_64

    .line 265
    .end local v9    # "r":Ljava/lang/String;
    .end local v11    # "w":D
    :cond_49
    invoke-virtual {v8, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 266
    .restart local v9    # "r":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x3

    .line 268
    :try_start_4f
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_57} :catch_154

    .line 274
    .restart local v11    # "w":D
    nop

    .line 276
    const-wide/16 v13, 0x0

    cmpg-double v15, v11, v13

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-ltz v15, :cond_11a

    cmpl-double v15, v11, v13

    if-gtz v15, :cond_11a

    .line 284
    :goto_64
    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_109

    .line 285
    new-instance v13, Ljava/util/Locale$LanguageRange;

    invoke-direct {v13, v9, v11, v12}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    .line 286
    .local v13, "lr":Ljava/util/Locale$LanguageRange;
    move v10, v7

    .line 287
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_71
    if-ge v14, v7, :cond_86

    .line 288
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Locale$LanguageRange;

    invoke-virtual {v15}, Ljava/util/Locale$LanguageRange;->getWeight()D

    move-result-wide v15

    cmpg-double v15, v15, v11

    if-gez v15, :cond_83

    .line 289
    move v10, v14

    .line 290
    goto :goto_86

    .line 287
    :cond_83
    add-int/lit8 v14, v14, 0x1

    goto :goto_71

    .line 293
    .end local v14    # "j":I
    :cond_86
    :goto_86
    invoke-interface {v3, v10, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 294
    add-int/lit8 v7, v7, 0x1

    .line 295
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-static {v9}, Lsun/util/locale/LocaleMatcher;->getEquivalentForRegionAndVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    .local v15, "equivalent":Ljava/lang/String;
    if-eqz v14, :cond_aa

    .line 303
    invoke-interface {v4, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_aa

    .line 304
    add-int/lit8 v14, v10, 0x1

    new-instance v6, Ljava/util/Locale$LanguageRange;

    invoke-direct {v6, v15, v11, v12}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    invoke-interface {v3, v14, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 305
    add-int/lit8 v7, v7, 0x1

    .line 306
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_aa
    invoke-static {v9}, Lsun/util/locale/LocaleMatcher;->getEquivalentsForLanguage(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    .local v14, "equivalents":[Ljava/lang/String;
    if-eqz v6, :cond_102

    .line 311
    array-length v6, v14

    move-object/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "ranges":Ljava/lang/String;
    .local v17, "ranges":Ljava/lang/String;
    :goto_b5
    if-ge v1, v6, :cond_fd

    move-object/from16 v18, v2

    .end local v2    # "langRanges":[Ljava/lang/String;
    .local v18, "langRanges":[Ljava/lang/String;
    aget-object v2, v14, v1

    .line 313
    .local v2, "equiv":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_d5

    .line 314
    move/from16 v19, v5

    add-int/lit8 v5, v10, 0x1

    move/from16 v16, v6

    new-instance v6, Ljava/util/Locale$LanguageRange;

    invoke-direct {v6, v2, v11, v12}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    invoke-interface {v3, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 315
    add-int/lit8 v7, v7, 0x1

    .line 316
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d9

    .line 313
    :cond_d5
    move/from16 v19, v5

    move/from16 v16, v6

    .line 320
    :goto_d9
    invoke-static {v2}, Lsun/util/locale/LocaleMatcher;->getEquivalentForRegionAndVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 321
    if-eqz v15, :cond_f4

    .line 322
    invoke-interface {v4, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f4

    .line 323
    add-int/lit8 v5, v10, 0x1

    new-instance v6, Ljava/util/Locale$LanguageRange;

    invoke-direct {v6, v15, v11, v12}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    invoke-interface {v3, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 324
    add-int/lit8 v7, v7, 0x1

    .line 325
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v2    # "equiv":Ljava/lang/String;
    :cond_f4
    add-int/lit8 v1, v1, 0x1

    move/from16 v6, v16

    move-object/from16 v2, v18

    move/from16 v5, v19

    goto :goto_b5

    .end local v18    # "langRanges":[Ljava/lang/String;
    .local v2, "langRanges":[Ljava/lang/String;
    :cond_fd
    move-object/from16 v18, v2

    move/from16 v19, v5

    .end local v2    # "langRanges":[Ljava/lang/String;
    .restart local v18    # "langRanges":[Ljava/lang/String;
    goto :goto_10f

    .line 310
    .end local v17    # "ranges":Ljava/lang/String;
    .end local v18    # "langRanges":[Ljava/lang/String;
    .restart local v1    # "ranges":Ljava/lang/String;
    .restart local v2    # "langRanges":[Ljava/lang/String;
    :cond_102
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v5

    .end local v1    # "ranges":Ljava/lang/String;
    .end local v2    # "langRanges":[Ljava/lang/String;
    .restart local v17    # "ranges":Ljava/lang/String;
    .restart local v18    # "langRanges":[Ljava/lang/String;
    goto :goto_10f

    .line 284
    .end local v13    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v14    # "equivalents":[Ljava/lang/String;
    .end local v15    # "equivalent":Ljava/lang/String;
    .end local v17    # "ranges":Ljava/lang/String;
    .end local v18    # "langRanges":[Ljava/lang/String;
    .restart local v1    # "ranges":Ljava/lang/String;
    .restart local v2    # "langRanges":[Ljava/lang/String;
    :cond_109
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v5

    .line 256
    .end local v1    # "ranges":Ljava/lang/String;
    .end local v2    # "langRanges":[Ljava/lang/String;
    .end local v8    # "range":Ljava/lang/String;
    .end local v9    # "r":Ljava/lang/String;
    .end local v10    # "index":I
    .end local v11    # "w":D
    .restart local v17    # "ranges":Ljava/lang/String;
    .restart local v18    # "langRanges":[Ljava/lang/String;
    :goto_10f
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v5, v19

    const/4 v6, 0x0

    goto/16 :goto_37

    .line 276
    .end local v17    # "ranges":Ljava/lang/String;
    .end local v18    # "langRanges":[Ljava/lang/String;
    .restart local v1    # "ranges":Ljava/lang/String;
    .restart local v2    # "langRanges":[Ljava/lang/String;
    .restart local v8    # "range":Ljava/lang/String;
    .restart local v9    # "r":Ljava/lang/String;
    .restart local v10    # "index":I
    .restart local v11    # "w":D
    :cond_11a
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 277
    .end local v1    # "ranges":Ljava/lang/String;
    .end local v2    # "langRanges":[Ljava/lang/String;
    .restart local v17    # "ranges":Ljava/lang/String;
    .restart local v18    # "langRanges":[Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " for language range \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\". It must be between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    .end local v11    # "w":D
    .end local v17    # "ranges":Ljava/lang/String;
    .end local v18    # "langRanges":[Ljava/lang/String;
    .restart local v1    # "ranges":Ljava/lang/String;
    .restart local v2    # "langRanges":[Ljava/lang/String;
    :catch_154
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 271
    .end local v1    # "ranges":Ljava/lang/String;
    .end local v2    # "langRanges":[Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "ranges":Ljava/lang/String;
    .restart local v18    # "langRanges":[Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "weight=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" for language range \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "range":Ljava/lang/String;
    .end local v9    # "r":Ljava/lang/String;
    .end local v10    # "index":I
    .end local v17    # "ranges":Ljava/lang/String;
    .end local v18    # "langRanges":[Ljava/lang/String;
    .restart local v1    # "ranges":Ljava/lang/String;
    .restart local v2    # "langRanges":[Ljava/lang/String;
    :cond_181
    return-object v3
.end method

.method private static blacklist replaceFirstSubStringMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "range"    # Ljava/lang/String;
    .param p1, "substr"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 342
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 343
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 344
    return-object p0

    .line 346
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    return-object v1
.end method
