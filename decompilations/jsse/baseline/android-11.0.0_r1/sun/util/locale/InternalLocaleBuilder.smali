.class public final Lsun/util/locale/InternalLocaleBuilder;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;,
        Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final greylist-max-o PRIVATEUSE_KEY:Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;


# instance fields
.field private greylist-max-o extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o language:Ljava/lang/String;

.field private greylist-max-o region:Ljava/lang/String;

.field private greylist-max-o script:Ljava/lang/String;

.field private greylist-max-o uattributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o ukeywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o variant:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 41
    nop

    .line 43
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    const/4 v1, 0x0

    const-string v2, "x"

    invoke-direct {v0, v2, v1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(Ljava/lang/String;Lsun/util/locale/InternalLocaleBuilder$1;)V

    sput-object v0, Lsun/util/locale/InternalLocaleBuilder;->PRIVATEUSE_KEY:Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private greylist-max-o checkVariants(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "variants"    # Ljava/lang/String;
    .param p2, "sep"    # Ljava/lang/String;

    .line 577
    new-instance v0, Lsun/util/locale/StringTokenIterator;

    invoke-direct {v0, p1, p2}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .local v0, "itr":Lsun/util/locale/StringTokenIterator;
    :goto_5
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 579
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 581
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v2

    return v2

    .line 583
    :cond_1a
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 584
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_5

    .line 585
    :cond_1e
    const/4 v1, -0x1

    return v1
.end method

.method static greylist-max-o removePrivateuseVariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "privuseVal"    # Ljava/lang/String;

    .line 545
    new-instance v0, Lsun/util/locale/StringTokenIterator;

    const-string v1, "-"

    invoke-direct {v0, p0, v1}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .local v0, "itr":Lsun/util/locale/StringTokenIterator;
    const/4 v1, -0x1

    .line 551
    .local v1, "prefixStart":I
    const/4 v2, 0x0

    .line 552
    .local v2, "sawPrivuseVar":Z
    :goto_9
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v3

    if-nez v3, :cond_28

    .line 553
    const/4 v3, -0x1

    if-eq v1, v3, :cond_14

    .line 556
    const/4 v2, 0x1

    .line 557
    goto :goto_28

    .line 559
    :cond_14
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lvariant"

    invoke-static {v3, v4}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 560
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v1

    .line 562
    :cond_24
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_9

    .line 564
    :cond_28
    :goto_28
    if-nez v2, :cond_2b

    .line 565
    return-object p0

    .line 568
    :cond_2b
    nop

    .line 569
    if-nez v1, :cond_30

    const/4 v3, 0x0

    goto :goto_37

    :cond_30
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_37
    return-object v3
.end method

.method private greylist-max-o setExtensions(Ljava/util/List;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 11
    .param p2, "privateuse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lsun/util/locale/InternalLocaleBuilder;"
        }
    .end annotation

    .line 313
    .local p1, "bcpExtensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    .line 315
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_5a

    .line 316
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 317
    .local v0, "done":Ljava/util/Set;, "Ljava/util/Set<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 318
    .local v4, "bcpExt":Ljava/lang/String;
    new-instance v5, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-direct {v5, v4, v1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(Ljava/lang/String;Lsun/util/locale/InternalLocaleBuilder$1;)V

    .line 320
    .local v5, "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_56

    .line 322
    invoke-virtual {v5}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v6

    invoke-static {v6}, Lsun/util/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 323
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lsun/util/locale/InternalLocaleBuilder;->setUnicodeLocaleExtension(Ljava/lang/String;)V

    goto :goto_56

    .line 325
    :cond_41
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-nez v6, :cond_4d

    .line 326
    new-instance v6, Ljava/util/HashMap;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    .line 328
    :cond_4d
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_56
    :goto_56
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v4    # "bcpExt":Ljava/lang/String;
    .end local v5    # "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    goto :goto_18

    .line 334
    .end local v0    # "done":Ljava/util/Set;, "Ljava/util/Set<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;>;"
    :cond_5a
    if-eqz p2, :cond_7c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7c

    .line 336
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-nez v0, :cond_6e

    .line 337
    new-instance v0, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    .line 339
    :cond_6e
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    new-instance v3, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-direct {v3, p2, v1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(Ljava/lang/String;Lsun/util/locale/InternalLocaleBuilder$1;)V

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_7c
    return-object p0
.end method

.method private greylist-max-o setUnicodeLocaleExtension(Ljava/lang/String;)V
    .registers 12
    .param p1, "subtags"    # Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-eqz v0, :cond_7

    .line 596
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 598
    :cond_7
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-eqz v0, :cond_e

    .line 599
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 602
    :cond_e
    new-instance v0, Lsun/util/locale/StringTokenIterator;

    const-string v1, "-"

    invoke-direct {v0, p1, v1}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .local v0, "itr":Lsun/util/locale/StringTokenIterator;
    :goto_15
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_44

    .line 606
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/util/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 607
    goto :goto_44

    .line 609
    :cond_27
    iget-object v1, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-nez v1, :cond_32

    .line 610
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    .line 612
    :cond_32
    iget-object v1, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    new-instance v2, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_15

    .line 617
    :cond_44
    :goto_44
    const/4 v1, 0x0

    .line 619
    .local v1, "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    const/4 v3, -0x1

    .line 620
    .local v3, "typeStart":I
    const/4 v4, -0x1

    .line 621
    .local v4, "typeEnd":I
    :goto_47
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_dd

    .line 622
    const-string v5, ""

    const/4 v6, -0x1

    if-eqz v1, :cond_98

    .line 623
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 625
    nop

    .line 626
    if-ne v3, v6, :cond_61

    move-object v7, v5

    goto :goto_65

    :cond_61
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 627
    .local v7, "type":Ljava/lang/String;
    :goto_65
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-nez v8, :cond_70

    .line 628
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    .line 630
    :cond_70
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v8, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    new-instance v8, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 634
    .local v8, "tmpKey":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    iget-object v9, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_88

    const/4 v9, 0x0

    goto :goto_89

    :cond_88
    move-object v9, v8

    :goto_89
    move-object v1, v9

    .line 635
    move v4, v6

    move v3, v6

    .line 636
    .end local v8    # "tmpKey":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    goto :goto_b7

    .line 637
    .end local v7    # "type":Ljava/lang/String;
    :cond_8d
    if-ne v3, v6, :cond_93

    .line 638
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v3

    .line 640
    :cond_93
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    goto :goto_b7

    .line 642
    :cond_98
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b7

    .line 645
    new-instance v7, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    move-object v1, v7

    .line 646
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-eqz v7, :cond_b7

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b7

    .line 648
    const/4 v1, 0x0

    .line 652
    :cond_b7
    :goto_b7
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_d8

    .line 653
    if-eqz v1, :cond_dd

    .line 655
    nop

    .line 656
    if-ne v3, v6, :cond_c3

    goto :goto_c7

    :cond_c3
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 657
    .local v5, "type":Ljava/lang/String;
    :goto_c7
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-nez v6, :cond_d2

    .line 658
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    .line 660
    :cond_d2
    iget-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_dd

    .line 665
    .end local v5    # "type":Ljava/lang/String;
    :cond_d8
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto/16 :goto_47

    .line 667
    :cond_dd
    :goto_dd
    return-void
.end method


# virtual methods
.method public blacklist addUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 5
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 111
    invoke-static {p1}, Lsun/util/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 115
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-nez v0, :cond_12

    .line 116
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    .line 118
    :cond_12
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    new-instance v1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v1, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    return-object p0

    .line 112
    :cond_1d
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed Unicode locale attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist clear()Lsun/util/locale/InternalLocaleBuilder;
    .registers 2

    .line 470
    const-string v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    .line 471
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    .line 472
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    .line 473
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    .line 474
    invoke-virtual {p0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    .line 475
    return-object p0
.end method

.method public blacklist clearExtensions()Lsun/util/locale/InternalLocaleBuilder;
    .registers 2

    .line 479
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 480
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 482
    :cond_7
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-eqz v0, :cond_e

    .line 483
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 485
    :cond_e
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-eqz v0, :cond_15

    .line 486
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 488
    :cond_15
    return-object p0
.end method

.method public blacklist getBaseLocale()Lsun/util/locale/BaseLocale;
    .registers 13

    .line 492
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    .line 493
    .local v0, "language":Ljava/lang/String;
    iget-object v1, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    .line 494
    .local v1, "script":Ljava/lang/String;
    iget-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    .line 495
    .local v2, "region":Ljava/lang/String;
    iget-object v3, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    .line 499
    .local v3, "variant":Ljava/lang/String;
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-eqz v4, :cond_5f

    .line 500
    sget-object v5, Lsun/util/locale/InternalLocaleBuilder;->PRIVATEUSE_KEY:Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 501
    .local v4, "privuse":Ljava/lang/String;
    if-eqz v4, :cond_5f

    .line 502
    new-instance v5, Lsun/util/locale/StringTokenIterator;

    const-string v6, "-"

    invoke-direct {v5, v4, v6}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .local v5, "itr":Lsun/util/locale/StringTokenIterator;
    const/4 v7, 0x0

    .line 504
    .local v7, "sawPrefix":Z
    const/4 v8, -0x1

    .line 505
    .local v8, "privVarStart":I
    :goto_1f
    invoke-virtual {v5}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v9

    if-nez v9, :cond_3d

    .line 506
    if-eqz v7, :cond_2c

    .line 507
    invoke-virtual {v5}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v8

    .line 508
    goto :goto_3d

    .line 510
    :cond_2c
    invoke-virtual {v5}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v9

    const-string v10, "lvariant"

    invoke-static {v9, v10}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 511
    const/4 v7, 0x1

    .line 513
    :cond_39
    invoke-virtual {v5}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_1f

    .line 515
    :cond_3d
    :goto_3d
    const/4 v9, -0x1

    if-eq v8, v9, :cond_5f

    .line 516
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const-string v11, "_"

    if-eqz v10, :cond_50

    .line 518
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_50
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 527
    .end local v4    # "privuse":Ljava/lang/String;
    .end local v5    # "itr":Lsun/util/locale/StringTokenIterator;
    .end local v7    # "sawPrefix":Z
    .end local v8    # "privVarStart":I
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_5f
    invoke-static {v0, v1, v2, v3}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v4

    return-object v4
.end method

.method public blacklist getLocaleExtensions()Lsun/util/locale/LocaleExtensions;
    .registers 6

    .line 531
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    .line 532
    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 533
    return-object v1

    .line 536
    :cond_1a
    new-instance v0, Lsun/util/locale/LocaleExtensions;

    iget-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    iget-object v3, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-direct {v0, v2, v3, v4}, Lsun/util/locale/LocaleExtensions;-><init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V

    .line 537
    .local v0, "lext":Lsun/util/locale/LocaleExtensions;
    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_2d

    :cond_2c
    move-object v1, v0

    :goto_2d
    return-object v1
.end method

.method public blacklist removeUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 5
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 123
    if-eqz p1, :cond_15

    invoke-static {p1}, Lsun/util/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 126
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-eqz v0, :cond_14

    .line 127
    new-instance v1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v1, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 129
    :cond_14
    return-object p0

    .line 124
    :cond_15
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed Unicode locale attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setExtension(CLjava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 13
    .param p1, "singleton"    # C
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 169
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v0

    .line 170
    .local v0, "isBcpPrivateuse":Z
    if-nez v0, :cond_24

    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isExtensionSingletonChar(C)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_24

    .line 171
    :cond_d
    new-instance v1, Lsun/util/locale/LocaleSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ill-formed extension key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_24
    :goto_24
    invoke-static {p2}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    .line 175
    .local v1, "remove":Z
    new-instance v2, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-direct {v2, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    .line 177
    .local v2, "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    if-eqz v1, :cond_59

    .line 178
    invoke-virtual {v2}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v3

    invoke-static {v3}, Lsun/util/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 180
    iget-object v3, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-eqz v3, :cond_40

    .line 181
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 183
    :cond_40
    iget-object v3, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-eqz v3, :cond_bc

    .line 184
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto/16 :goto_bc

    .line 187
    :cond_49
    iget-object v3, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-eqz v3, :cond_bc

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 188
    iget-object v3, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bc

    .line 193
    :cond_59
    const-string v3, "_"

    const-string v4, "-"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "val":Ljava/lang/String;
    new-instance v5, Lsun/util/locale/StringTokenIterator;

    invoke-direct {v5, v3, v4}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 195
    .local v4, "itr":Lsun/util/locale/StringTokenIterator;
    :goto_67
    invoke-virtual {v4}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_9d

    .line 196
    invoke-virtual {v4}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, "s":Ljava/lang/String;
    if-eqz v0, :cond_78

    .line 199
    invoke-static {v5}, Lsun/util/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v6

    .local v6, "validSubtag":Z
    goto :goto_7c

    .line 201
    .end local v6    # "validSubtag":Z
    :cond_78
    invoke-static {v5}, Lsun/util/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v6

    .line 203
    .restart local v6    # "validSubtag":Z
    :goto_7c
    if-eqz v6, :cond_82

    .line 207
    invoke-virtual {v4}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 208
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "validSubtag":Z
    goto :goto_67

    .line 204
    .restart local v5    # "s":Ljava/lang/String;
    .restart local v6    # "validSubtag":Z
    :cond_82
    new-instance v7, Lsun/util/locale/LocaleSyntaxException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ill-formed extension value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 205
    invoke-virtual {v4}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 210
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "validSubtag":Z
    :cond_9d
    invoke-virtual {v2}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v5

    invoke-static {v5}, Lsun/util/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 211
    invoke-direct {p0, v3}, Lsun/util/locale/InternalLocaleBuilder;->setUnicodeLocaleExtension(Ljava/lang/String;)V

    goto :goto_bc

    .line 213
    :cond_ab
    iget-object v5, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-nez v5, :cond_b7

    .line 214
    new-instance v5, Ljava/util/HashMap;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    .line 216
    :cond_b7
    iget-object v5, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .end local v3    # "val":Ljava/lang/String;
    .end local v4    # "itr":Lsun/util/locale/StringTokenIterator;
    :cond_bc
    :goto_bc
    return-object p0
.end method

.method public blacklist setExtensions(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 13
    .param p1, "subtags"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 226
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 227
    invoke-virtual {p0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    .line 228
    return-object p0

    .line 230
    :cond_a
    const-string v0, "_"

    const-string v1, "-"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 231
    new-instance v0, Lsun/util/locale/StringTokenIterator;

    invoke-direct {v0, p1, v1}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .local v0, "itr":Lsun/util/locale/StringTokenIterator;
    const/4 v2, 0x0

    .line 234
    .local v2, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 236
    .local v3, "privateuse":Ljava/lang/String;
    const/4 v4, 0x0

    .line 240
    .local v4, "parsed":I
    :goto_1a
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_84

    .line 241
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Lsun/util/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 243
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v6

    .line 244
    .local v6, "start":I
    move-object v7, v5

    .line 245
    .local v7, "singleton":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 248
    :goto_37
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v9

    if-nez v9, :cond_55

    .line 249
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-static {v5}, Lsun/util/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_55

    .line 251
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    .line 256
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_37

    .line 259
    :cond_55
    if-lt v4, v6, :cond_68

    .line 264
    if-nez v2, :cond_60

    .line 265
    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v9

    .line 267
    :cond_60
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v5    # "s":Ljava/lang/String;
    .end local v7    # "singleton":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1a

    .line 260
    .restart local v5    # "s":Ljava/lang/String;
    .restart local v7    # "singleton":Ljava/lang/String;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_68
    new-instance v1, Lsun/util/locale/LocaleSyntaxException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Incomplete extension \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9, v6}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 272
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "start":I
    .end local v7    # "singleton":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_84
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_e1

    .line 273
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 274
    .restart local v5    # "s":Ljava/lang/String;
    invoke-static {v5}, Lsun/util/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e1

    .line 275
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v6

    .line 276
    .restart local v6    # "start":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 279
    :goto_a0
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_bf

    .line 280
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 281
    invoke-static {v5}, Lsun/util/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b1

    .line 282
    goto :goto_bf

    .line 284
    :cond_b1
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    .line 287
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_a0

    .line 289
    :cond_bf
    :goto_bf
    if-le v4, v6, :cond_c6

    .line 294
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_e1

    .line 290
    :cond_c6
    new-instance v1, Lsun/util/locale/LocaleSyntaxException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incomplete privateuse:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8, v6}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 299
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "start":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_e1
    :goto_e1
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 305
    invoke-direct {p0, v2, v3}, Lsun/util/locale/InternalLocaleBuilder;->setExtensions(Ljava/util/List;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;

    move-result-object v1

    return-object v1

    .line 300
    :cond_ec
    new-instance v1, Lsun/util/locale/LocaleSyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ill-formed extension subtags:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 302
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v6

    invoke-direct {v1, v5, v6}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public blacklist setLanguage(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 5
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 60
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    goto :goto_13

    .line 63
    :cond_b
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 66
    iput-object p1, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    .line 68
    :goto_13
    return-object p0

    .line 64
    :cond_14
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public blacklist setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 7
    .param p1, "langtag"    # Lsun/util/locale/LanguageTag;

    .line 349
    invoke-virtual {p0}, Lsun/util/locale/InternalLocaleBuilder;->clear()Lsun/util/locale/InternalLocaleBuilder;

    .line 350
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getExtlangs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 351
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getExtlangs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    goto :goto_29

    .line 353
    :cond_1b
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "lang":Ljava/lang/String;
    const-string v2, "und"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 355
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    .line 358
    .end local v0    # "lang":Ljava/lang/String;
    :cond_29
    :goto_29
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, "bcpVariants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_69

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 364
    .local v1, "var":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 365
    .local v2, "size":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_50
    if-ge v3, v2, :cond_63

    .line 366
    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 368
    .end local v3    # "i":I
    :cond_63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    .line 371
    .end local v1    # "var":Ljava/lang/StringBuilder;
    .end local v2    # "size":I
    :cond_69
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lsun/util/locale/InternalLocaleBuilder;->setExtensions(Ljava/util/List;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;

    .line 373
    return-object p0
.end method

.method public blacklist setLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 19
    .param p1, "base"    # Lsun/util/locale/BaseLocale;
    .param p2, "localeExtensions"    # Lsun/util/locale/LocaleExtensions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 377
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "language":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, "script":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "region":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, "variant":Ljava/lang/String;
    const-string v6, "ja"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const-string v6, "JP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 388
    nop

    .line 389
    const-string v5, ""

    goto :goto_64

    .line 392
    :cond_2e
    const-string v6, "th"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    const-string v6, "TH"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 395
    nop

    .line 396
    const-string v5, ""

    goto :goto_64

    .line 399
    :cond_48
    const-string v6, "no"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    const-string v6, "NO"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    const-string v6, "NY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 402
    const-string v2, "nn"

    .line 403
    const-string v5, ""

    .line 409
    :cond_64
    :goto_64
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_88

    invoke-static {v2}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_71

    goto :goto_88

    .line 410
    :cond_71
    new-instance v6, Lsun/util/locale/LocaleSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ill-formed language: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 413
    :cond_88
    :goto_88
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_ac

    invoke-static {v3}, Lsun/util/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_95

    goto :goto_ac

    .line 414
    :cond_95
    new-instance v6, Lsun/util/locale/LocaleSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ill-formed script: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 417
    :cond_ac
    :goto_ac
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_d0

    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b9

    goto :goto_d0

    .line 418
    :cond_b9
    new-instance v6, Lsun/util/locale/LocaleSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ill-formed region: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 421
    :cond_d0
    :goto_d0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_fd

    .line 423
    const-string v6, "-"

    const-string v7, "_"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 425
    invoke-direct {v0, v5, v7}, Lsun/util/locale/InternalLocaleBuilder;->checkVariants(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 426
    .local v6, "errIdx":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_e6

    goto :goto_fd

    .line 427
    :cond_e6
    new-instance v7, Lsun/util/locale/LocaleSyntaxException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ill-formed variant: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 433
    .end local v6    # "errIdx":I
    :cond_fd
    :goto_fd
    iput-object v2, v0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    .line 434
    iput-object v3, v0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    .line 435
    iput-object v4, v0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    .line 436
    iput-object v5, v0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    .line 437
    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    .line 439
    if-nez v1, :cond_10c

    const/4 v6, 0x0

    goto :goto_110

    :cond_10c
    invoke-virtual/range {p2 .. p2}, Lsun/util/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v6

    .line 440
    .local v6, "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    :goto_110
    if-eqz v6, :cond_1a8

    .line 442
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_116
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Character;

    .line 443
    .local v8, "key":Ljava/lang/Character;
    invoke-virtual {v1, v8}, Lsun/util/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Lsun/util/locale/Extension;

    move-result-object v9

    .line 444
    .local v9, "e":Lsun/util/locale/Extension;
    instance-of v10, v9, Lsun/util/locale/UnicodeLocaleExtension;

    const/4 v11, 0x4

    if-eqz v10, :cond_188

    .line 445
    move-object v10, v9

    check-cast v10, Lsun/util/locale/UnicodeLocaleExtension;

    .line 446
    .local v10, "ue":Lsun/util/locale/UnicodeLocaleExtension;
    invoke-virtual {v10}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_136
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_158

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 447
    .local v13, "uatr":Ljava/lang/String;
    iget-object v14, v0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-nez v14, :cond_14d

    .line 448
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v11}, Ljava/util/HashSet;-><init>(I)V

    iput-object v14, v0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    .line 450
    :cond_14d
    iget-object v14, v0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    new-instance v15, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v15, v13}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 451
    .end local v13    # "uatr":Ljava/lang/String;
    goto :goto_136

    .line 452
    :cond_158
    invoke-virtual {v10}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_160
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_187

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 453
    .local v13, "ukey":Ljava/lang/String;
    iget-object v14, v0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-nez v14, :cond_177

    .line 454
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14, v11}, Ljava/util/HashMap;-><init>(I)V

    iput-object v14, v0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    .line 456
    :cond_177
    iget-object v14, v0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    new-instance v15, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v15, v13}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v14, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .end local v13    # "ukey":Ljava/lang/String;
    const/4 v11, 0x4

    goto :goto_160

    .line 458
    .end local v10    # "ue":Lsun/util/locale/UnicodeLocaleExtension;
    :cond_187
    goto :goto_1a6

    .line 459
    :cond_188
    iget-object v10, v0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-nez v10, :cond_194

    .line 460
    new-instance v10, Ljava/util/HashMap;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    iput-object v10, v0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    .line 462
    :cond_194
    iget-object v10, v0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    new-instance v11, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v12

    invoke-direct {v11, v12}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    invoke-virtual {v9}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .end local v8    # "key":Ljava/lang/Character;
    .end local v9    # "e":Lsun/util/locale/Extension;
    :goto_1a6
    goto/16 :goto_116

    .line 466
    :cond_1a8
    return-object v0
.end method

.method public blacklist setRegion(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 5
    .param p1, "region"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 84
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    goto :goto_13

    .line 87
    :cond_b
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 90
    iput-object p1, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    .line 92
    :goto_13
    return-object p0

    .line 88
    :cond_14
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed region: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public blacklist setScript(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 5
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 72
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    goto :goto_13

    .line 75
    :cond_b
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 78
    iput-object p1, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    .line 80
    :goto_13
    return-object p0

    .line 76
    :cond_14
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed script: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public blacklist setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 133
    invoke-static {p1}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 137
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v0, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "cikey":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    if-nez p2, :cond_15

    .line 139
    iget-object v1, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-eqz v1, :cond_69

    .line 141
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    .line 144
    :cond_15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_58

    .line 146
    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "tp":Ljava/lang/String;
    new-instance v3, Lsun/util/locale/StringTokenIterator;

    invoke-direct {v3, v1, v2}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 149
    .local v2, "itr":Lsun/util/locale/StringTokenIterator;
    :goto_29
    invoke-virtual {v2}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v3

    if-nez v3, :cond_58

    .line 150
    invoke-virtual {v2}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Lsun/util/locale/UnicodeLocaleExtension;->isTypeSubtag(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 156
    invoke-virtual {v2}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 157
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_29

    .line 152
    .restart local v3    # "s":Ljava/lang/String;
    :cond_3d
    new-instance v4, Lsun/util/locale/LocaleSyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ill-formed Unicode locale keyword type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-virtual {v2}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 159
    .end local v1    # "tp":Ljava/lang/String;
    .end local v2    # "itr":Lsun/util/locale/StringTokenIterator;
    .end local v3    # "s":Ljava/lang/String;
    :cond_58
    iget-object v1, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-nez v1, :cond_64

    .line 160
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    .line 162
    :cond_64
    iget-object v1, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_69
    :goto_69
    return-object p0

    .line 134
    .end local v0    # "cikey":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    :cond_6a
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed Unicode locale keyword key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setVariant(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 7
    .param p1, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 96
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    goto :goto_1c

    .line 100
    :cond_b
    const-string v0, "-"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "var":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lsun/util/locale/InternalLocaleBuilder;->checkVariants(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 102
    .local v1, "errIdx":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    .line 105
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    .line 107
    .end local v0    # "var":Ljava/lang/String;
    .end local v1    # "errIdx":I
    :goto_1c
    return-object p0

    .line 103
    .restart local v0    # "var":Ljava/lang/String;
    .restart local v1    # "errIdx":I
    :cond_1d
    new-instance v2, Lsun/util/locale/LocaleSyntaxException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ill-formed variant: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method
