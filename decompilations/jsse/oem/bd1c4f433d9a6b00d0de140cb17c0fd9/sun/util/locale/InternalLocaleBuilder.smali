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
.field static final synthetic -assertionsDisabled:Z

.field private static final PRIVATEUSE_KEY:Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;


# instance fields
.field private extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private script:Ljava/lang/String;

.field private uattributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field

.field private ukeywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-class v0, Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    .line 44
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    const-string/jumbo v1, "x"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(Ljava/lang/String;Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;)V

    .line 43
    sput-object v0, Lsun/util/locale/InternalLocaleBuilder;->PRIVATEUSE_KEY:Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private checkVariants(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "variants"    # Ljava/lang/String;
    .param p2, "sep"    # Ljava/lang/String;

    .prologue
    .line 577
    new-instance v0, Lsun/util/locale/StringTokenIterator;

    invoke-direct {v0, p1, p2}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .local v0, "itr":Lsun/util/locale/StringTokenIterator;
    :goto_5
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_1e

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

    goto :goto_5

    .line 585
    .end local v1    # "s":Ljava/lang/String;
    :cond_1e
    const/4 v2, -0x1

    return v2
.end method

.method static removePrivateuseVariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "privuseVal"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 545
    new-instance v0, Lsun/util/locale/StringTokenIterator;

    const-string/jumbo v3, "-"

    invoke-direct {v0, p0, v3}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .local v0, "itr":Lsun/util/locale/StringTokenIterator;
    const/4 v1, -0x1

    .line 551
    .local v1, "prefixStart":I
    const/4 v2, 0x0

    .line 552
    .local v2, "sawPrivuseVar":Z
    :goto_b
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v3

    if-nez v3, :cond_15

    .line 553
    const/4 v3, -0x1

    if-eq v1, v3, :cond_18

    .line 556
    const/4 v2, 0x1

    .line 564
    :cond_15
    if-nez v2, :cond_2d

    .line 565
    return-object p0

    .line 559
    :cond_18
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "lvariant"

    invoke-static {v3, v4}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 560
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v1

    .line 562
    :cond_29
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_b

    .line 568
    :cond_2d
    sget-boolean v3, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    if-nez v3, :cond_3c

    if-eqz v1, :cond_3c

    const/4 v3, 0x1

    if-gt v1, v3, :cond_3c

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 569
    :cond_3c
    if-nez v1, :cond_40

    const/4 v3, 0x0

    :goto_3f
    return-object v3

    :cond_40
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_3f
.end method

.method private setExtensions(Ljava/util/List;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 11
    .param p2, "privateuse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lsun/util/locale/InternalLocaleBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "bcpExtensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 313
    invoke-virtual {p0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    .line 315
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 316
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 317
    .local v2, "done":Ljava/util/Set;, "Ljava/util/Set<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bcpExt$iterator":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    .local v0, "bcpExt":Ljava/lang/String;
    new-instance v3, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-direct {v3, v0, v6}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(Ljava/lang/String;Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;)V

    .line 320
    .local v3, "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 322
    invoke-virtual {v3}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v4

    invoke-static {v4}, Lsun/util/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 323
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/util/locale/InternalLocaleBuilder;->setUnicodeLocaleExtension(Ljava/lang/String;)V

    .line 331
    :cond_40
    :goto_40
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 325
    :cond_44
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-nez v4, :cond_50

    .line 326
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    .line 328
    :cond_50
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 334
    .end local v0    # "bcpExt":Ljava/lang/String;
    .end local v1    # "bcpExt$iterator":Ljava/util/Iterator;
    .end local v2    # "done":Ljava/util/Set;, "Ljava/util/Set<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;>;"
    .end local v3    # "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    :cond_5a
    if-eqz p2, :cond_7c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7c

    .line 336
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-nez v4, :cond_6e

    .line 337
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    .line 339
    :cond_6e
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    new-instance v5, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-direct {v5, p2, v6}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(Ljava/lang/String;Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;)V

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_7c
    return-object p0
.end method

.method private setUnicodeLocaleExtension(Ljava/lang/String;)V
    .registers 13
    .param p1, "subtags"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x4

    const/4 v9, -0x1

    .line 595
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-eqz v6, :cond_b

    .line 596
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 598
    :cond_b
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-eqz v6, :cond_14

    .line 599
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 602
    :cond_14
    new-instance v0, Lsun/util/locale/StringTokenIterator;

    const-string/jumbo v6, "-"

    invoke-direct {v0, p1, v6}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .local v0, "itr":Lsun/util/locale/StringTokenIterator;
    :goto_1c
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v6

    if-nez v6, :cond_2c

    .line 606
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lsun/util/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4f

    .line 617
    :cond_2c
    const/4 v1, 0x0

    .line 619
    .local v1, "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    const/4 v5, -0x1

    .line 620
    .local v5, "typeStart":I
    const/4 v4, -0x1

    .line 621
    .end local v1    # "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .local v4, "typeEnd":I
    :goto_2f
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v6

    if-nez v6, :cond_f3

    .line 622
    if-eqz v1, :cond_bd

    .line 623
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 625
    sget-boolean v6, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    if-nez v6, :cond_6c

    if-eq v5, v9, :cond_6c

    if-ne v4, v9, :cond_6c

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 609
    .end local v4    # "typeEnd":I
    .end local v5    # "typeStart":I
    :cond_4f
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-nez v6, :cond_5a

    .line 610
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v10}, Ljava/util/HashSet;-><init>(I)V

    iput-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    .line 612
    :cond_5a
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    new-instance v7, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_1c

    .line 626
    .restart local v4    # "typeEnd":I
    .restart local v5    # "typeStart":I
    :cond_6c
    if-ne v5, v9, :cond_ab

    const-string/jumbo v3, ""

    .line 627
    .local v3, "type":Ljava/lang/String;
    :goto_71
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-nez v6, :cond_7c

    .line 628
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v10}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    .line 630
    :cond_7c
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    new-instance v2, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 634
    .local v2, "tmpKey":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b0

    const/4 v1, 0x0

    .line 635
    :goto_93
    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 652
    .end local v2    # "tmpKey":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .end local v3    # "type":Ljava/lang/String;
    :cond_95
    :goto_95
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_f9

    .line 653
    if-eqz v1, :cond_f3

    .line 655
    sget-boolean v6, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    if-nez v6, :cond_de

    if-eq v5, v9, :cond_de

    if-ne v4, v9, :cond_de

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 626
    :cond_ab
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "type":Ljava/lang/String;
    goto :goto_71

    .line 634
    .restart local v2    # "tmpKey":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    :cond_b0
    move-object v1, v2

    .local v1, "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    goto :goto_93

    .line 637
    .end local v1    # "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .end local v2    # "tmpKey":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .end local v3    # "type":Ljava/lang/String;
    :cond_b2
    if-ne v5, v9, :cond_b8

    .line 638
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v5

    .line 640
    :cond_b8
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    goto :goto_95

    .line 642
    :cond_bd
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 645
    new-instance v1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 646
    .restart local v1    # "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-eqz v6, :cond_95

    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 648
    const/4 v1, 0x0

    .local v1, "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    goto :goto_95

    .line 656
    .end local v1    # "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    :cond_de
    if-ne v5, v9, :cond_f4

    const-string/jumbo v3, ""

    .line 657
    .restart local v3    # "type":Ljava/lang/String;
    :goto_e3
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-nez v6, :cond_ee

    .line 658
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v10}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    .line 660
    :cond_ee
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .end local v3    # "type":Ljava/lang/String;
    :cond_f3
    return-void

    .line 656
    :cond_f4
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "type":Ljava/lang/String;
    goto :goto_e3

    .line 665
    .end local v3    # "type":Ljava/lang/String;
    :cond_f9
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto/16 :goto_2f
.end method


# virtual methods
.method public addUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 5
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {p1}, Lsun/util/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 112
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed Unicode locale attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_20
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-nez v0, :cond_2c

    .line 116
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    .line 118
    :cond_2c
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    new-instance v1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v1, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    return-object p0
.end method

.method public clear()Lsun/util/locale/InternalLocaleBuilder;
    .registers 2

    .prologue
    .line 470
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    .line 471
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    .line 472
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    .line 473
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    .line 474
    invoke-virtual {p0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    .line 475
    return-object p0
.end method

.method public clearExtensions()Lsun/util/locale/InternalLocaleBuilder;
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 480
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 482
    :cond_9
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-eqz v0, :cond_12

    .line 483
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 485
    :cond_12
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-eqz v0, :cond_1b

    .line 486
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 488
    :cond_1b
    return-object p0
.end method

.method public getBaseLocale()Lsun/util/locale/BaseLocale;
    .registers 13

    .prologue
    .line 492
    iget-object v1, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    .line 493
    .local v1, "language":Ljava/lang/String;
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    .line 494
    .local v7, "script":Ljava/lang/String;
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    .line 495
    .local v4, "region":Ljava/lang/String;
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    .line 499
    .local v8, "variant":Ljava/lang/String;
    iget-object v9, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-eqz v9, :cond_57

    .line 500
    iget-object v9, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    sget-object v10, Lsun/util/locale/InternalLocaleBuilder;->PRIVATEUSE_KEY:Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 501
    .local v3, "privuse":Ljava/lang/String;
    if-eqz v3, :cond_57

    .line 502
    new-instance v0, Lsun/util/locale/StringTokenIterator;

    const-string/jumbo v9, "-"

    invoke-direct {v0, v3, v9}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .local v0, "itr":Lsun/util/locale/StringTokenIterator;
    const/4 v5, 0x0

    .line 504
    .local v5, "sawPrefix":Z
    const/4 v2, -0x1

    .line 505
    .local v2, "privVarStart":I
    :goto_22
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v9

    if-nez v9, :cond_2e

    .line 506
    if-eqz v5, :cond_5c

    .line 507
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v2

    .line 515
    :cond_2e
    const/4 v9, -0x1

    if-eq v2, v9, :cond_57

    .line 516
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_42

    .line 518
    const-string/jumbo v9, "_"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_42
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "-"

    .line 521
    const-string/jumbo v11, "_"

    .line 520
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 527
    .end local v0    # "itr":Lsun/util/locale/StringTokenIterator;
    .end local v2    # "privVarStart":I
    .end local v3    # "privuse":Ljava/lang/String;
    .end local v5    # "sawPrefix":Z
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_57
    invoke-static {v1, v7, v4, v8}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v9

    return-object v9

    .line 510
    .restart local v0    # "itr":Lsun/util/locale/StringTokenIterator;
    .restart local v2    # "privVarStart":I
    .restart local v3    # "privuse":Ljava/lang/String;
    .restart local v5    # "sawPrefix":Z
    :cond_5c
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "lvariant"

    invoke-static {v9, v10}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 511
    const/4 v5, 0x1

    .line 513
    :cond_6a
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_22
.end method

.method public getLocaleExtensions()Lsun/util/locale/LocaleExtensions;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 531
    iget-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 532
    iget-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    .line 531
    if-eqz v2, :cond_1a

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

    move-object v0, v1

    .end local v0    # "lext":Lsun/util/locale/LocaleExtensions;
    :cond_2c
    return-object v0
.end method

.method public removeUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 5
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .prologue
    .line 123
    if-eqz p1, :cond_a

    invoke-static {p1}, Lsun/util/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_24

    .line 124
    :cond_a
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed Unicode locale attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_24
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-eqz v0, :cond_32

    .line 127
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    new-instance v1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v1, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 129
    :cond_32
    return-object p0
.end method

.method public setExtension(CLjava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 13
    .param p1, "singleton"    # C
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v0

    .line 170
    .local v0, "isBcpPrivateuse":Z
    if-nez v0, :cond_28

    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isExtensionSingletonChar(C)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_28

    .line 171
    new-instance v7, Lsun/util/locale/LocaleSyntaxException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ill-formed extension key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 174
    :cond_28
    invoke-static {p2}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    .line 175
    .local v3, "remove":Z
    new-instance v2, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-direct {v2, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    .line 177
    .local v2, "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    if-eqz v3, :cond_62

    .line 178
    invoke-virtual {v2}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v7

    invoke-static {v7}, Lsun/util/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 180
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    if-eqz v7, :cond_46

    .line 181
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 183
    :cond_46
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-eqz v7, :cond_4f

    .line 184
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 219
    :cond_4f
    :goto_4f
    return-object p0

    .line 187
    :cond_50
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-eqz v7, :cond_4f

    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 188
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    .line 193
    :cond_62
    const-string/jumbo v7, "_"

    const-string/jumbo v8, "-"

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "val":Ljava/lang/String;
    new-instance v1, Lsun/util/locale/StringTokenIterator;

    const-string/jumbo v7, "-"

    invoke-direct {v1, v5, v7}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v1, "itr":Lsun/util/locale/StringTokenIterator;
    :goto_74
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v7

    if-nez v7, :cond_ad

    .line 196
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "s":Ljava/lang/String;
    if-eqz v0, :cond_a4

    .line 199
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v6

    .line 203
    .local v6, "validSubtag":Z
    :goto_84
    if-nez v6, :cond_a9

    .line 204
    new-instance v7, Lsun/util/locale/LocaleSyntaxException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ill-formed extension value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 205
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v9

    .line 204
    invoke-direct {v7, v8, v9}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 201
    .end local v6    # "validSubtag":Z
    :cond_a4
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v6

    .restart local v6    # "validSubtag":Z
    goto :goto_84

    .line 207
    :cond_a9
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_74

    .line 210
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "validSubtag":Z
    :cond_ad
    invoke-virtual {v2}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v7

    invoke-static {v7}, Lsun/util/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 211
    invoke-direct {p0, v5}, Lsun/util/locale/InternalLocaleBuilder;->setUnicodeLocaleExtension(Ljava/lang/String;)V

    goto :goto_4f

    .line 213
    :cond_bb
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    if-nez v7, :cond_c7

    .line 214
    new-instance v7, Ljava/util/HashMap;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    .line 216
    :cond_c7
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    invoke-interface {v7, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f
.end method

.method public setExtensions(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 13
    .param p1, "subtags"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 227
    invoke-virtual {p0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    .line 228
    return-object p0

    .line 230
    :cond_a
    const-string/jumbo v8, "_"

    const-string/jumbo v9, "-"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 231
    new-instance v1, Lsun/util/locale/StringTokenIterator;

    const-string/jumbo v8, "-"

    invoke-direct {v1, p1, v8}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .local v1, "itr":Lsun/util/locale/StringTokenIterator;
    const/4 v0, 0x0

    .line 234
    .local v0, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 236
    .local v3, "privateuse":Ljava/lang/String;
    const/4 v2, 0x0

    .line 240
    .end local v0    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "parsed":I
    :goto_1f
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_91

    .line 241
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_91

    .line 243
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v7

    .line 244
    .local v7, "start":I
    move-object v6, v4

    .line 245
    .local v6, "singleton":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 248
    :goto_3c
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_5e

    .line 249
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 251
    const-string/jumbo v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    .line 256
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_3c

    .line 259
    :cond_5e
    if-ge v2, v7, :cond_81

    .line 260
    new-instance v8, Lsun/util/locale/LocaleSyntaxException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Incomplete extension \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 264
    :cond_81
    if-nez v0, :cond_89

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    const/4 v8, 0x4

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    :cond_89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 272
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "singleton":Ljava/lang/String;
    .end local v7    # "start":I
    :cond_91
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_f3

    .line 273
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v4

    .line 274
    .restart local v4    # "s":Ljava/lang/String;
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f3

    .line 275
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v7

    .line 276
    .restart local v7    # "start":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 279
    :goto_ad
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_bd

    .line 280
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v4

    .line 281
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_dd

    .line 289
    :cond_bd
    if-gt v2, v7, :cond_ef

    .line 290
    new-instance v8, Lsun/util/locale/LocaleSyntaxException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Incomplete privateuse:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 291
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 290
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 284
    :cond_dd
    const-string/jumbo v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    .line 287
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_ad

    .line 294
    :cond_ef
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    .end local v3    # "privateuse":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "start":I
    :cond_f3
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_11f

    .line 300
    new-instance v8, Lsun/util/locale/LocaleSyntaxException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Ill-formed extension subtags:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 301
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 300
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 302
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v10

    .line 300
    invoke-direct {v8, v9, v10}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 305
    :cond_11f
    invoke-direct {p0, v0, v3}, Lsun/util/locale/InternalLocaleBuilder;->setExtensions(Ljava/util/List;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;

    move-result-object v8

    return-object v8
.end method

.method public setLanguage(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 5
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    .line 68
    :goto_b
    return-object p0

    .line 63
    :cond_c
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 64
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 66
    :cond_2d
    iput-object p1, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    goto :goto_b
.end method

.method public setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 9
    .param p1, "langtag"    # Lsun/util/locale/LanguageTag;

    .prologue
    const/4 v6, 0x0

    .line 349
    invoke-virtual {p0}, Lsun/util/locale/InternalLocaleBuilder;->clear()Lsun/util/locale/InternalLocaleBuilder;

    .line 350
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getExtlangs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_55

    .line 351
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getExtlangs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    .line 358
    :cond_1a
    :goto_1a
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, "bcpVariants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6b

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .local v4, "var":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 365
    .local v3, "size":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_40
    if-ge v1, v3, :cond_65

    .line 366
    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 353
    .end local v0    # "bcpVariants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v3    # "size":I
    .end local v4    # "var":Ljava/lang/StringBuilder;
    :cond_55
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "lang":Ljava/lang/String;
    const-string/jumbo v5, "und"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 355
    iput-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    goto :goto_1a

    .line 368
    .end local v2    # "lang":Ljava/lang/String;
    .restart local v0    # "bcpVariants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    .restart local v4    # "var":Ljava/lang/StringBuilder;
    :cond_65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    .line 371
    .end local v1    # "i":I
    .end local v3    # "size":I
    .end local v4    # "var":Ljava/lang/StringBuilder;
    :cond_6b
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lsun/util/locale/InternalLocaleBuilder;->setExtensions(Ljava/util/List;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;

    .line 373
    return-object p0
.end method

.method public setLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 22
    .param p1, "base"    # Lsun/util/locale/BaseLocale;
    .param p2, "localeExtensions"    # Lsun/util/locale/LocaleExtensions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 378
    .local v7, "language":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v9

    .line 379
    .local v9, "script":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v8

    .line 380
    .local v8, "region":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v15

    .line 385
    .local v15, "variant":Ljava/lang/String;
    const-string/jumbo v16, "ja"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7a

    const-string/jumbo v16, "JP"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7a

    const-string/jumbo v16, "JP"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7a

    .line 388
    sget-boolean v16, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    if-nez v16, :cond_4d

    const-string/jumbo v16, "japanese"

    const-string/jumbo v17, "ca"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4d

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 389
    :cond_4d
    const-string/jumbo v15, ""

    .line 409
    :cond_50
    :goto_50
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_e2

    invoke-static {v7}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_e2

    .line 410
    new-instance v16, Lsun/util/locale/LocaleSyntaxException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Ill-formed language: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 392
    :cond_7a
    const-string/jumbo v16, "th"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_bb

    const-string/jumbo v16, "TH"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_bb

    const-string/jumbo v16, "TH"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_bb

    .line 395
    sget-boolean v16, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    if-nez v16, :cond_b7

    const-string/jumbo v16, "thai"

    const-string/jumbo v17, "nu"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b7

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 396
    :cond_b7
    const-string/jumbo v15, ""

    goto :goto_50

    .line 399
    :cond_bb
    const-string/jumbo v16, "no"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_50

    const-string/jumbo v16, "NO"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_50

    const-string/jumbo v16, "NY"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_50

    .line 402
    const-string/jumbo v7, "nn"

    .line 403
    const-string/jumbo v15, ""

    goto/16 :goto_50

    .line 413
    :cond_e2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_10c

    invoke-static {v9}, Lsun/util/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_10c

    .line 414
    new-instance v16, Lsun/util/locale/LocaleSyntaxException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Ill-formed script: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 417
    :cond_10c
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_136

    invoke-static {v8}, Lsun/util/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_136

    .line 418
    new-instance v16, Lsun/util/locale/LocaleSyntaxException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Ill-formed region: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 421
    :cond_136
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_177

    .line 423
    const-string/jumbo v16, "-"

    const-string/jumbo v17, "_"

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 425
    const-string/jumbo v16, "_"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lsun/util/locale/InternalLocaleBuilder;->checkVariants(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 426
    .local v3, "errIdx":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v3, v0, :cond_177

    .line 427
    new-instance v16, Lsun/util/locale/LocaleSyntaxException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Ill-formed variant: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v16

    .line 433
    .end local v3    # "errIdx":I
    :cond_177
    move-object/from16 v0, p0

    iput-object v7, v0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    .line 434
    move-object/from16 v0, p0

    iput-object v9, v0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    .line 435
    move-object/from16 v0, p0

    iput-object v8, v0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    .line 436
    move-object/from16 v0, p0

    iput-object v15, v0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    .line 437
    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    .line 439
    if-nez p2, :cond_1e8

    const/4 v4, 0x0

    .line 440
    :goto_18d
    if-eqz v4, :cond_258

    .line 442
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "key$iterator":Ljava/util/Iterator;
    :cond_193
    :goto_193
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_258

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    .line 443
    .local v5, "key":Ljava/lang/Character;
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lsun/util/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Lsun/util/locale/Extension;

    move-result-object v2

    .line 444
    .local v2, "e":Lsun/util/locale/Extension;
    instance-of v0, v2, Lsun/util/locale/UnicodeLocaleExtension;

    move/from16 v16, v0

    if-eqz v16, :cond_22b

    move-object v12, v2

    .line 445
    check-cast v12, Lsun/util/locale/UnicodeLocaleExtension;

    .line 446
    .local v12, "ue":Lsun/util/locale/UnicodeLocaleExtension;
    invoke-virtual {v12}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "uatr$iterator":Ljava/util/Iterator;
    :goto_1b6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1ed

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 447
    .local v10, "uatr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    move-object/from16 v16, v0

    if-nez v16, :cond_1d7

    .line 448
    new-instance v16, Ljava/util/HashSet;

    const/16 v17, 0x4

    invoke-direct/range {v16 .. v17}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    .line 450
    :cond_1d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    move-object/from16 v16, v0

    new-instance v17, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b6

    .line 439
    .end local v2    # "e":Lsun/util/locale/Extension;
    .end local v5    # "key":Ljava/lang/Character;
    .end local v6    # "key$iterator":Ljava/util/Iterator;
    .end local v10    # "uatr":Ljava/lang/String;
    .end local v11    # "uatr$iterator":Ljava/util/Iterator;
    .end local v12    # "ue":Lsun/util/locale/UnicodeLocaleExtension;
    :cond_1e8
    invoke-virtual/range {p2 .. p2}, Lsun/util/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v4

    .local v4, "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    goto :goto_18d

    .line 452
    .end local v4    # "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .restart local v2    # "e":Lsun/util/locale/Extension;
    .restart local v5    # "key":Ljava/lang/Character;
    .restart local v6    # "key$iterator":Ljava/util/Iterator;
    .restart local v11    # "uatr$iterator":Ljava/util/Iterator;
    .restart local v12    # "ue":Lsun/util/locale/UnicodeLocaleExtension;
    :cond_1ed
    invoke-virtual {v12}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "ukey$iterator":Ljava/util/Iterator;
    :goto_1f5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_193

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 453
    .local v13, "ukey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    move-object/from16 v16, v0

    if-nez v16, :cond_216

    .line 454
    new-instance v16, Ljava/util/HashMap;

    const/16 v17, 0x4

    invoke-direct/range {v16 .. v17}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    .line 456
    :cond_216
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    move-object/from16 v16, v0

    new-instance v17, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f5

    .line 459
    .end local v11    # "uatr$iterator":Ljava/util/Iterator;
    .end local v12    # "ue":Lsun/util/locale/UnicodeLocaleExtension;
    .end local v13    # "ukey":Ljava/lang/String;
    .end local v14    # "ukey$iterator":Ljava/util/Iterator;
    :cond_22b
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    move-object/from16 v16, v0

    if-nez v16, :cond_240

    .line 460
    new-instance v16, Ljava/util/HashMap;

    const/16 v17, 0x4

    invoke-direct/range {v16 .. v17}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    .line 462
    :cond_240
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    move-object/from16 v16, v0

    new-instance v17, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v18

    invoke-direct/range {v17 .. v18}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    invoke-virtual {v2}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_193

    .line 466
    .end local v2    # "e":Lsun/util/locale/Extension;
    .end local v5    # "key":Ljava/lang/Character;
    .end local v6    # "key$iterator":Ljava/util/Iterator;
    :cond_258
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 5
    .param p1, "region"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    .line 92
    :goto_b
    return-object p0

    .line 87
    :cond_c
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 88
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed region: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 90
    :cond_2d
    iput-object p1, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    goto :goto_b
.end method

.method public setScript(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 5
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 73
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    .line 80
    :goto_b
    return-object p0

    .line 75
    :cond_c
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 76
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed script: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 78
    :cond_2d
    iput-object p1, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    goto :goto_b
.end method

.method public setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p1}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 134
    new-instance v4, Lsun/util/locale/LocaleSyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ill-formed Unicode locale keyword key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :cond_20
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v0, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "cikey":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    if-nez p2, :cond_31

    .line 139
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-eqz v4, :cond_30

    .line 141
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_30
    :goto_30
    return-object p0

    .line 144
    :cond_31
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7b

    .line 146
    const-string/jumbo v4, "_"

    const-string/jumbo v5, "-"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "tp":Ljava/lang/String;
    new-instance v1, Lsun/util/locale/StringTokenIterator;

    const-string/jumbo v4, "-"

    invoke-direct {v1, v3, v4}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v1, "itr":Lsun/util/locale/StringTokenIterator;
    :goto_49
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v4

    if-nez v4, :cond_7b

    .line 150
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Lsun/util/locale/UnicodeLocaleExtension;->isTypeSubtag(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_77

    .line 152
    new-instance v4, Lsun/util/locale/LocaleSyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ill-formed Unicode locale keyword type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v6

    .line 152
    invoke-direct {v4, v5, v6}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 156
    :cond_77
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_49

    .line 159
    .end local v1    # "itr":Lsun/util/locale/StringTokenIterator;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "tp":Ljava/lang/String;
    :cond_7b
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    if-nez v4, :cond_87

    .line 160
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    .line 162
    :cond_87
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30
.end method

.method public setVariant(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .registers 7
    .param p1, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 97
    const-string/jumbo v2, ""

    iput-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    .line 107
    :goto_b
    return-object p0

    .line 100
    :cond_c
    const-string/jumbo v2, "-"

    const-string/jumbo v3, "_"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "var":Ljava/lang/String;
    const-string/jumbo v2, "_"

    invoke-direct {p0, v1, v2}, Lsun/util/locale/InternalLocaleBuilder;->checkVariants(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, "errIdx":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3a

    .line 103
    new-instance v2, Lsun/util/locale/LocaleSyntaxException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ill-formed variant: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 105
    :cond_3a
    iput-object v1, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    goto :goto_b
.end method
