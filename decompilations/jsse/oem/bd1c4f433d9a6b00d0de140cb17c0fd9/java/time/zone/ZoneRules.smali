.class public final Ljava/time/zone/ZoneRules;
.super Ljava/lang/Object;
.source "ZoneRules.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EMPTY_LASTRULES:[Ljava/time/zone/ZoneOffsetTransitionRule;

.field private static final EMPTY_LDT_ARRAY:[Ljava/time/LocalDateTime;

.field private static final EMPTY_LONG_ARRAY:[J

.field private static final LAST_CACHED_YEAR:I = 0x834

.field private static final serialVersionUID:J = 0x2a3f985312278703L


# instance fields
.field private final lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

.field private final transient lastRulesCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final savingsInstantTransitions:[J

.field private final savingsLocalTransitions:[Ljava/time/LocalDateTime;

.field private final standardOffsets:[Ljava/time/ZoneOffset;

.field private final standardTransitions:[J

.field private final wallOffsets:[Ljava/time/ZoneOffset;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 155
    new-array v0, v1, [J

    sput-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    .line 160
    new-array v0, v1, [Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 159
    sput-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LASTRULES:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 164
    new-array v0, v1, [Ljava/time/LocalDateTime;

    sput-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Ljava/time/LocalDateTime;

    .line 110
    return-void
.end method

.method private constructor <init>(Ljava/time/ZoneOffset;)V
    .registers 4
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 150
    iput-object v0, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 310
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/time/ZoneOffset;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    .line 311
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 312
    sget-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    .line 313
    sget-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 314
    sget-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Ljava/time/LocalDateTime;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    .line 315
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    .line 316
    sget-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LASTRULES:[Ljava/time/zone/ZoneOffsetTransitionRule;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 317
    return-void
.end method

.method constructor <init>(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 16
    .param p1, "baseStandardOffset"    # Ljava/time/ZoneOffset;
    .param p2, "baseWallOffset"    # Ljava/time/ZoneOffset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/ZoneOffset;",
            "Ljava/util/List",
            "<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/time/zone/ZoneOffsetTransitionRule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p3, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local p4, "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local p5, "lastRules":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 150
    iput-object v5, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 220
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    .line 222
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Ljava/time/ZoneOffset;

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    .line 223
    iget-object v5, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_49

    .line 225
    iget-object v6, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v5}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v8

    aput-wide v8, v6, v0

    .line 226
    iget-object v6, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v7, v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v5}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v5

    aput-object v5, v6, v7

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 230
    :cond_49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v1, "localTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/LocalDateTime;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v2, "localTransitionOffsetList":Ljava/util/List;, "Ljava/util/List<Ljava/time/ZoneOffset;>;"
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "trans$iterator":Ljava/util/Iterator;
    :goto_5a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/zone/ZoneOffsetTransition;

    .line 234
    .local v3, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 235
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :goto_7a
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 238
    :cond_82
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 243
    .end local v3    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_91
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/time/LocalDateTime;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/time/LocalDateTime;

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    .line 244
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/time/ZoneOffset;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/time/ZoneOffset;

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    .line 247
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 248
    const/4 v0, 0x0

    :goto_b6
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_cd

    .line 249
    iget-object v6, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v5}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v8

    aput-wide v8, v6, v0

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    .line 253
    :cond_cd
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x10

    if-le v5, v6, :cond_de

    .line 254
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Too many transition rules"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 256
    :cond_de
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/time/zone/ZoneOffsetTransitionRule;

    invoke-interface {p5, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/time/zone/ZoneOffsetTransitionRule;

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 257
    return-void
.end method

.method private constructor <init>([J[Ljava/time/ZoneOffset;[J[Ljava/time/ZoneOffset;[Ljava/time/zone/ZoneOffsetTransitionRule;)V
    .registers 14
    .param p1, "standardTransitions"    # [J
    .param p2, "standardOffsets"    # [Ljava/time/ZoneOffset;
    .param p3, "savingsInstantTransitions"    # [J
    .param p4, "wallOffsets"    # [Ljava/time/ZoneOffset;
    .param p5, "lastRules"    # [Ljava/time/zone/ZoneOffsetTransitionRule;

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 150
    iput-object v5, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 275
    iput-object p1, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    .line 276
    iput-object p2, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    .line 277
    iput-object p3, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 278
    iput-object p4, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    .line 279
    iput-object p5, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 281
    array-length v5, p3

    if-nez v5, :cond_1c

    .line 282
    sget-object v5, Ljava/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Ljava/time/LocalDateTime;

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    .line 300
    :goto_1b
    return-void

    .line 285
    :cond_1c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v3, "localTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/LocalDateTime;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    array-length v5, p3

    if-ge v2, v5, :cond_58

    .line 287
    aget-object v1, p4, v2

    .line 288
    .local v1, "before":Ljava/time/ZoneOffset;
    add-int/lit8 v5, v2, 0x1

    aget-object v0, p4, v5

    .line 289
    .local v0, "after":Ljava/time/ZoneOffset;
    new-instance v4, Ljava/time/zone/ZoneOffsetTransition;

    aget-wide v6, p3, v2

    invoke-direct {v4, v6, v7, v1, v0}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    .line 290
    .local v4, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 291
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 294
    :cond_49
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 298
    .end local v0    # "after":Ljava/time/ZoneOffset;
    .end local v1    # "before":Ljava/time/ZoneOffset;
    .end local v4    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_58
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/time/LocalDateTime;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/time/LocalDateTime;

    iput-object v5, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    goto :goto_1b
.end method

.method private findOffsetInfo(Ljava/time/LocalDateTime;Ljava/time/zone/ZoneOffsetTransition;)Ljava/lang/Object;
    .registers 5
    .param p1, "dt"    # Ljava/time/LocalDateTime;
    .param p2, "trans"    # Ljava/time/zone/ZoneOffsetTransition;

    .prologue
    .line 693
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 694
    .local v0, "localTransition":Ljava/time/LocalDateTime;
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 695
    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 696
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 698
    :cond_15
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 699
    return-object p2

    .line 701
    :cond_20
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 704
    :cond_25
    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 705
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 707
    :cond_30
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 708
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 710
    :cond_3f
    return-object p2
.end method

.method private findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;
    .registers 7
    .param p1, "year"    # I

    .prologue
    .line 722
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 723
    .local v3, "yearObj":Ljava/lang/Integer;
    iget-object v4, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/time/zone/ZoneOffsetTransition;

    .line 724
    .local v2, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v2, :cond_f

    .line 725
    return-object v2

    .line 727
    :cond_f
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 728
    .local v1, "ruleArray":[Ljava/time/zone/ZoneOffsetTransitionRule;
    array-length v4, v1

    new-array v2, v4, [Ljava/time/zone/ZoneOffsetTransition;

    .line 729
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    array-length v4, v1

    if-ge v0, v4, :cond_23

    .line 730
    aget-object v4, v1, v0

    invoke-virtual {v4, p1}, Ljava/time/zone/ZoneOffsetTransitionRule;->createTransition(I)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v4

    aput-object v4, v2, v0

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 732
    :cond_23
    const/16 v4, 0x834

    if-ge p1, v4, :cond_2c

    .line 733
    iget-object v4, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    :cond_2c
    return-object v2
.end method

.method private findYear(JLjava/time/ZoneOffset;)I
    .registers 11
    .param p1, "epochSecond"    # J
    .param p3, "offset"    # Ljava/time/ZoneOffset;

    .prologue
    .line 926
    invoke-virtual {p3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    add-long v2, p1, v4

    .line 927
    .local v2, "localSecond":J
    const-wide/32 v4, 0x15180

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    .line 928
    .local v0, "localEpochDay":J
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalDate;->getYear()I

    move-result v4

    return v4
.end method

.method private getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;
    .registers 13
    .param p1, "dt"    # Ljava/time/LocalDateTime;

    .prologue
    const/4 v8, 0x0

    .line 635
    iget-object v9, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v9, v9

    if-nez v9, :cond_b

    .line 636
    iget-object v9, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    aget-object v8, v9, v8

    return-object v8

    .line 639
    :cond_b
    iget-object v9, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v9, v9

    if-lez v9, :cond_44

    .line 640
    iget-object v9, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    iget-object v10, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {p1, v9}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v9

    .line 639
    if-eqz v9, :cond_44

    .line 641
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v9

    invoke-direct {p0, v9}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v7

    .line 642
    .local v7, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    const/4 v3, 0x0

    .line 643
    .local v3, "info":Ljava/lang/Object;
    array-length v9, v7

    .end local v3    # "info":Ljava/lang/Object;
    :goto_29
    if-ge v8, v9, :cond_43

    aget-object v6, v7, v8

    .line 644
    .local v6, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-direct {p0, p1, v6}, Ljava/time/zone/ZoneRules;->findOffsetInfo(Ljava/time/LocalDateTime;Ljava/time/zone/ZoneOffsetTransition;)Ljava/lang/Object;

    move-result-object v3

    .line 645
    .restart local v3    # "info":Ljava/lang/Object;
    instance-of v10, v3, Ljava/time/zone/ZoneOffsetTransition;

    if-nez v10, :cond_3f

    invoke-virtual {v6}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 646
    :cond_3f
    return-object v3

    .line 643
    :cond_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    .line 649
    .end local v3    # "info":Ljava/lang/Object;
    .end local v6    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_43
    return-object v3

    .line 653
    .end local v7    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    :cond_44
    iget-object v9, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    invoke-static {v9, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 654
    .local v2, "index":I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_52

    .line 656
    iget-object v9, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v8, v9, v8

    return-object v8

    .line 658
    :cond_52
    if-gez v2, :cond_83

    .line 660
    neg-int v8, v2

    add-int/lit8 v2, v8, -0x2

    .line 666
    :cond_57
    :goto_57
    and-int/lit8 v8, v2, 0x1

    if-nez v8, :cond_a3

    .line 668
    iget-object v8, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    aget-object v1, v8, v2

    .line 669
    .local v1, "dtBefore":Ljava/time/LocalDateTime;
    iget-object v8, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    add-int/lit8 v9, v2, 0x1

    aget-object v0, v8, v9

    .line 670
    .local v0, "dtAfter":Ljava/time/LocalDateTime;
    iget-object v8, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    div-int/lit8 v9, v2, 0x2

    aget-object v5, v8, v9

    .line 671
    .local v5, "offsetBefore":Ljava/time/ZoneOffset;
    iget-object v8, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    div-int/lit8 v9, v2, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-object v4, v8, v9

    .line 672
    .local v4, "offsetAfter":Ljava/time/ZoneOffset;
    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v8

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v9

    if-le v8, v9, :cond_9d

    .line 674
    new-instance v8, Ljava/time/zone/ZoneOffsetTransition;

    invoke-direct {v8, v1, v5, v4}, Ljava/time/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v8

    .line 661
    .end local v0    # "dtAfter":Ljava/time/LocalDateTime;
    .end local v1    # "dtBefore":Ljava/time/LocalDateTime;
    .end local v4    # "offsetAfter":Ljava/time/ZoneOffset;
    .end local v5    # "offsetBefore":Ljava/time/ZoneOffset;
    :cond_83
    iget-object v8, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_57

    .line 662
    iget-object v8, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    aget-object v8, v8, v2

    iget-object v9, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    add-int/lit8 v10, v2, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 661
    if-eqz v8, :cond_57

    .line 664
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 677
    .restart local v0    # "dtAfter":Ljava/time/LocalDateTime;
    .restart local v1    # "dtBefore":Ljava/time/LocalDateTime;
    .restart local v4    # "offsetAfter":Ljava/time/ZoneOffset;
    .restart local v5    # "offsetBefore":Ljava/time/ZoneOffset;
    :cond_9d
    new-instance v8, Ljava/time/zone/ZoneOffsetTransition;

    invoke-direct {v8, v0, v5, v4}, Ljava/time/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v8

    .line 681
    .end local v0    # "dtAfter":Ljava/time/LocalDateTime;
    .end local v1    # "dtBefore":Ljava/time/LocalDateTime;
    .end local v4    # "offsetAfter":Ljava/time/ZoneOffset;
    .end local v5    # "offsetBefore":Ljava/time/ZoneOffset;
    :cond_a3
    iget-object v8, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    div-int/lit8 v9, v2, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    return-object v8
.end method

.method public static of(Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneRules;
    .registers 2
    .param p0, "offset"    # Ljava/time/ZoneOffset;

    .prologue
    .line 198
    const-string/jumbo v0, "offset"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava/time/zone/ZoneRules;

    invoke-direct {v0, p0}, Ljava/time/zone/ZoneRules;-><init>(Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method public static of(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/time/zone/ZoneRules;
    .registers 11
    .param p0, "baseStandardOffset"    # Ljava/time/ZoneOffset;
    .param p1, "baseWallOffset"    # Ljava/time/ZoneOffset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/ZoneOffset;",
            "Ljava/util/List",
            "<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/time/zone/ZoneOffsetTransitionRule;",
            ">;)",
            "Ljava/time/zone/ZoneRules;"
        }
    .end annotation

    .prologue
    .line 181
    .local p2, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local p3, "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local p4, "lastRules":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    const-string/jumbo v0, "baseStandardOffset"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v0, "baseWallOffset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    const-string/jumbo v0, "standardOffsetTransitionList"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    const-string/jumbo v0, "transitionList"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    const-string/jumbo v0, "lastRules"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    new-instance v0, Ljava/time/zone/ZoneRules;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/time/zone/ZoneRules;-><init>(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneRules;
    .registers 13
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v9

    .line 431
    .local v9, "stdSize":I
    if-nez v9, :cond_14

    sget-object v1, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    .line 433
    .local v1, "stdTrans":[J
    :goto_8
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_9
    if-ge v6, v9, :cond_17

    .line 434
    invoke-static {p0}, Ljava/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v10

    aput-wide v10, v1, v6

    .line 433
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 432
    .end local v1    # "stdTrans":[J
    .end local v6    # "i":I
    :cond_14
    new-array v1, v9, [J

    .restart local v1    # "stdTrans":[J
    goto :goto_8

    .line 436
    .restart local v6    # "i":I
    :cond_17
    add-int/lit8 v0, v9, 0x1

    new-array v2, v0, [Ljava/time/ZoneOffset;

    .line 437
    .local v2, "stdOffsets":[Ljava/time/ZoneOffset;
    const/4 v6, 0x0

    :goto_1c
    array-length v0, v2

    if-ge v6, v0, :cond_28

    .line 438
    invoke-static {p0}, Ljava/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v0

    aput-object v0, v2, v6

    .line 437
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 440
    :cond_28
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v8

    .line 441
    .local v8, "savSize":I
    if-nez v8, :cond_3c

    sget-object v3, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    .line 443
    .local v3, "savTrans":[J
    :goto_30
    const/4 v6, 0x0

    :goto_31
    if-ge v6, v8, :cond_3f

    .line 444
    invoke-static {p0}, Ljava/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v10

    aput-wide v10, v3, v6

    .line 443
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 442
    .end local v3    # "savTrans":[J
    :cond_3c
    new-array v3, v8, [J

    .restart local v3    # "savTrans":[J
    goto :goto_30

    .line 446
    :cond_3f
    add-int/lit8 v0, v8, 0x1

    new-array v4, v0, [Ljava/time/ZoneOffset;

    .line 447
    .local v4, "savOffsets":[Ljava/time/ZoneOffset;
    const/4 v6, 0x0

    :goto_44
    array-length v0, v4

    if-ge v6, v0, :cond_50

    .line 448
    invoke-static {p0}, Ljava/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v0

    aput-object v0, v4, v6

    .line 447
    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    .line 450
    :cond_50
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v7

    .line 451
    .local v7, "ruleSize":I
    if-nez v7, :cond_64

    .line 452
    sget-object v5, Ljava/time/zone/ZoneRules;->EMPTY_LASTRULES:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 453
    .local v5, "rules":[Ljava/time/zone/ZoneOffsetTransitionRule;
    :goto_58
    const/4 v6, 0x0

    :goto_59
    if-ge v6, v7, :cond_67

    .line 454
    invoke-static {p0}, Ljava/time/zone/ZoneOffsetTransitionRule;->readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v0

    aput-object v0, v5, v6

    .line 453
    add-int/lit8 v6, v6, 0x1

    goto :goto_59

    .line 452
    .end local v5    # "rules":[Ljava/time/zone/ZoneOffsetTransitionRule;
    :cond_64
    new-array v5, v7, [Ljava/time/zone/ZoneOffsetTransitionRule;

    .restart local v5    # "rules":[Ljava/time/zone/ZoneOffsetTransitionRule;
    goto :goto_58

    .line 456
    :cond_67
    new-instance v0, Ljava/time/zone/ZoneRules;

    invoke-direct/range {v0 .. v5}, Ljava/time/zone/ZoneRules;-><init>([J[Ljava/time/ZoneOffset;[J[Ljava/time/ZoneOffset;[Ljava/time/zone/ZoneOffsetTransitionRule;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 392
    new-instance v0, Ljava/time/zone/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/time/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "otherRules"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 990
    if-ne p0, p1, :cond_5

    .line 991
    const/4 v1, 0x1

    return v1

    .line 993
    :cond_5
    instance-of v2, p1, Ljava/time/zone/ZoneRules;

    if-eqz v2, :cond_3d

    move-object v0, p1

    .line 994
    check-cast v0, Ljava/time/zone/ZoneRules;

    .line 995
    .local v0, "other":Ljava/time/zone/ZoneRules;
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    iget-object v3, v0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 996
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    iget-object v3, v0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    .line 995
    if-eqz v2, :cond_3c

    .line 997
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v3, v0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    .line 995
    if-eqz v2, :cond_3c

    .line 998
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    iget-object v3, v0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    .line 995
    if-eqz v2, :cond_3c

    .line 999
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    iget-object v2, v0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 995
    :cond_3c
    return v1

    .line 1001
    .end local v0    # "other":Ljava/time/zone/ZoneRules;
    :cond_3d
    return v1
.end method

.method public getDaylightSavings(Ljava/time/Instant;)Ljava/time/Duration;
    .registers 6
    .param p1, "instant"    # Ljava/time/Instant;

    .prologue
    .line 781
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v2, v2

    if-nez v2, :cond_8

    .line 782
    sget-object v2, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    return-object v2

    .line 784
    :cond_8
    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 785
    .local v1, "standardOffset":Ljava/time/ZoneOffset;
    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 786
    .local v0, "actualOffset":Ljava/time/ZoneOffset;
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    return-object v2
.end method

.method public getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;
    .registers 12
    .param p1, "instant"    # Ljava/time/Instant;

    .prologue
    const/4 v8, 0x0

    .line 480
    iget-object v7, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v7, v7

    if-nez v7, :cond_b

    .line 481
    iget-object v7, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    aget-object v7, v7, v8

    return-object v7

    .line 483
    :cond_b
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 485
    .local v0, "epochSec":J
    iget-object v7, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v7, v7

    if-lez v7, :cond_4e

    .line 486
    iget-object v7, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v8, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-wide v8, v7, v8

    cmp-long v7, v0, v8

    if-lez v7, :cond_4e

    .line 487
    iget-object v7, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    iget-object v8, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-direct {p0, v0, v1, v7}, Ljava/time/zone/ZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v6

    .line 488
    .local v6, "year":I
    invoke-direct {p0, v6}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v5

    .line 489
    .local v5, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    const/4 v4, 0x0

    .line 490
    .local v4, "trans":Ljava/time/zone/ZoneOffsetTransition;
    const/4 v2, 0x0

    .end local v4    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    .local v2, "i":I
    :goto_34
    array-length v7, v5

    if-ge v2, v7, :cond_49

    .line 491
    aget-object v4, v5, v2

    .line 492
    .local v4, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v8

    cmp-long v7, v0, v8

    if-gez v7, :cond_46

    .line 493
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v7

    return-object v7

    .line 490
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 496
    .end local v4    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_49
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v7

    return-object v7

    .line 500
    .end local v2    # "i":I
    .end local v5    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    .end local v6    # "year":I
    :cond_4e
    iget-object v7, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v7, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 501
    .local v3, "index":I
    if-gez v3, :cond_59

    .line 503
    neg-int v7, v3

    add-int/lit8 v3, v7, -0x2

    .line 505
    :cond_59
    iget-object v7, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v8, v3, 0x1

    aget-object v7, v7, v8

    return-object v7
.end method

.method public getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;
    .registers 4
    .param p1, "localDateTime"    # Ljava/time/LocalDateTime;

    .prologue
    .line 537
    invoke-direct {p0, p1}, Ljava/time/zone/ZoneRules;->getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    .line 538
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_f

    .line 539
    check-cast v0, Ljava/time/zone/ZoneOffsetTransition;

    .end local v0    # "info":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 541
    .restart local v0    # "info":Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/time/ZoneOffset;

    .end local v0    # "info":Ljava/lang/Object;
    return-object v0
.end method

.method public getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;
    .registers 7
    .param p1, "instant"    # Ljava/time/Instant;

    .prologue
    const/4 v4, 0x0

    .line 751
    iget-object v3, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v3, v3

    if-nez v3, :cond_b

    .line 752
    iget-object v3, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    aget-object v3, v3, v4

    return-object v3

    .line 754
    :cond_b
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 755
    .local v0, "epochSec":J
    iget-object v3, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    invoke-static {v3, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    .line 756
    .local v2, "index":I
    if-gez v2, :cond_1a

    .line 758
    neg-int v3, v2

    add-int/lit8 v2, v3, -0x2

    .line 760
    :cond_1a
    iget-object v3, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    return-object v3
.end method

.method public getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;
    .registers 4
    .param p1, "localDateTime"    # Ljava/time/LocalDateTime;

    .prologue
    .line 630
    invoke-direct {p0, p1}, Ljava/time/zone/ZoneRules;->getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    .line 631
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/time/zone/ZoneOffsetTransition;

    .end local v0    # "info":Ljava/lang/Object;
    :goto_a
    return-object v0

    .restart local v0    # "info":Ljava/lang/Object;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getTransitionRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/zone/ZoneOffsetTransitionRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 973
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitions()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 944
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 945
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v2, v2

    if-ge v0, v2, :cond_24

    .line 946
    new-instance v2, Ljava/time/zone/ZoneOffsetTransition;

    iget-object v3, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v3, v3, v0

    iget-object v6, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    invoke-direct {v2, v4, v5, v3, v6}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 948
    :cond_24
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;
    .registers 4
    .param p1, "localDateTime"    # Ljava/time/LocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDateTime;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    invoke-direct {p0, p1}, Ljava/time/zone/ZoneRules;->getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    .line 589
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_f

    .line 590
    check-cast v0, Ljava/time/zone/ZoneOffsetTransition;

    .end local v0    # "info":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/time/zone/ZoneOffsetTransition;->getValidOffsets()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 592
    .restart local v0    # "info":Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/time/ZoneOffset;

    .end local v0    # "info":Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1011
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    .line 1012
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    .line 1011
    xor-int/2addr v0, v1

    .line 1013
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    .line 1011
    xor-int/2addr v0, v1

    .line 1014
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    .line 1011
    xor-int/2addr v0, v1

    .line 1015
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    .line 1011
    xor-int/2addr v0, v1

    return v0
.end method

.method public isDaylightSavings(Ljava/time/Instant;)Z
    .registers 4
    .param p1, "instant"    # Ljava/time/Instant;

    .prologue
    .line 804
    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isFixedOffset()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 465
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v1, v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z
    .registers 4
    .param p1, "localDateTime"    # Ljava/time/LocalDateTime;
    .param p2, "offset"    # Ljava/time/ZoneOffset;

    .prologue
    .line 822
    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public nextTransition(Ljava/time/Instant;)Ljava/time/zone/ZoneOffsetTransition;
    .registers 15
    .param p1, "instant"    # Ljava/time/Instant;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x0

    .line 837
    iget-object v6, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v6, v6

    if-nez v6, :cond_8

    .line 838
    return-object v12

    .line 840
    :cond_8
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 842
    .local v0, "epochSec":J
    iget-object v6, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v8, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-wide v8, v6, v8

    cmp-long v6, v0, v8

    if-ltz v6, :cond_51

    .line 843
    iget-object v6, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v6, v6

    if-nez v6, :cond_1f

    .line 844
    return-object v12

    .line 847
    :cond_1f
    iget-object v6, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    iget-object v8, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-object v6, v6, v8

    invoke-direct {p0, v0, v1, v6}, Ljava/time/zone/ZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v5

    .line 848
    .local v5, "year":I
    invoke-direct {p0, v5}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v4

    .line 849
    .local v4, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    array-length v8, v4

    move v6, v7

    :goto_32
    if-ge v6, v8, :cond_42

    aget-object v3, v4, v6

    .line 850
    .local v3, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v10

    cmp-long v9, v0, v10

    if-gez v9, :cond_3f

    .line 851
    return-object v3

    .line 849
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 855
    .end local v3    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_42
    const v6, 0x3b9ac9ff

    if-ge v5, v6, :cond_50

    .line 856
    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v4

    .line 857
    aget-object v6, v4, v7

    return-object v6

    .line 859
    :cond_50
    return-object v12

    .line 863
    .end local v4    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    .end local v5    # "year":I
    :cond_51
    iget-object v6, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v6, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    .line 864
    .local v2, "index":I
    if-gez v2, :cond_70

    .line 865
    neg-int v6, v2

    add-int/lit8 v2, v6, -0x1

    .line 869
    :goto_5c
    new-instance v6, Ljava/time/zone/ZoneOffsetTransition;

    iget-object v7, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    aget-wide v8, v7, v2

    iget-object v7, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v7, v7, v2

    iget-object v10, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v11, v2, 0x1

    aget-object v10, v10, v11

    invoke-direct {v6, v8, v9, v7, v10}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v6

    .line 867
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c
.end method

.method public previousTransition(Ljava/time/Instant;)Ljava/time/zone/ZoneOffsetTransition;
    .registers 17
    .param p1, "instant"    # Ljava/time/Instant;

    .prologue
    .line 884
    iget-object v10, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v10, v10

    if-nez v10, :cond_7

    .line 885
    const/4 v10, 0x0

    return-object v10

    .line 887
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 888
    .local v0, "epochSec":J
    invoke-virtual/range {p1 .. p1}, Ljava/time/Instant;->getNano()I

    move-result v10

    if-lez v10, :cond_1d

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v0, v10

    if-gez v10, :cond_1d

    .line 889
    const-wide/16 v10, 0x1

    add-long/2addr v0, v10

    .line 893
    :cond_1d
    iget-object v10, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v11, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-wide v4, v10, v11

    .line 894
    .local v4, "lastHistoric":J
    iget-object v10, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v10, v10

    if-lez v10, :cond_67

    cmp-long v10, v0, v4

    if-lez v10, :cond_67

    .line 896
    iget-object v10, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    iget-object v11, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-object v6, v10, v11

    .line 897
    .local v6, "lastHistoricOffset":Ljava/time/ZoneOffset;
    invoke-direct {p0, v0, v1, v6}, Ljava/time/zone/ZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v9

    .line 898
    .local v9, "year":I
    invoke-direct {p0, v9}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v8

    .line 899
    .local v8, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    array-length v10, v8

    add-int/lit8 v2, v10, -0x1

    .local v2, "i":I
    :goto_43
    if-ltz v2, :cond_55

    .line 900
    aget-object v10, v8, v2

    invoke-virtual {v10}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v10

    cmp-long v10, v0, v10

    if-lez v10, :cond_52

    .line 901
    aget-object v10, v8, v2

    return-object v10

    .line 899
    :cond_52
    add-int/lit8 v2, v2, -0x1

    goto :goto_43

    .line 905
    :cond_55
    invoke-direct {p0, v4, v5, v6}, Ljava/time/zone/ZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v7

    .line 906
    .local v7, "lastHistoricYear":I
    add-int/lit8 v9, v9, -0x1

    if-le v9, v7, :cond_67

    .line 907
    invoke-direct {p0, v9}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v8

    .line 908
    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v8, v10

    return-object v10

    .line 914
    .end local v2    # "i":I
    .end local v6    # "lastHistoricOffset":Ljava/time/ZoneOffset;
    .end local v7    # "lastHistoricYear":I
    .end local v8    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    .end local v9    # "year":I
    :cond_67
    iget-object v10, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v10, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 915
    .local v3, "index":I
    if-gez v3, :cond_72

    .line 916
    neg-int v10, v3

    add-int/lit8 v3, v10, -0x1

    .line 918
    :cond_72
    if-gtz v3, :cond_76

    .line 919
    const/4 v10, 0x0

    return-object v10

    .line 921
    :cond_76
    new-instance v10, Ljava/time/zone/ZoneOffsetTransition;

    iget-object v11, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    add-int/lit8 v12, v3, -0x1

    aget-wide v12, v11, v12

    iget-object v11, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v14, v3, -0x1

    aget-object v11, v11, v14

    iget-object v14, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v14, v14, v3

    invoke-direct {v10, v12, v13, v11, v14}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v10
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ZoneRules[currentStandardOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 10
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 402
    iget-object v5, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    array-length v5, v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 403
    iget-object v6, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    array-length v7, v6

    move v5, v4

    :goto_b
    if-ge v5, v7, :cond_15

    aget-wide v2, v6, v5

    .line 404
    .local v2, "trans":J
    invoke-static {v2, v3, p1}, Ljava/time/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 403
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 406
    .end local v2    # "trans":J
    :cond_15
    iget-object v6, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    array-length v7, v6

    move v5, v4

    :goto_19
    if-ge v5, v7, :cond_23

    aget-object v0, v6, v5

    .line 407
    .local v0, "offset":Ljava/time/ZoneOffset;
    invoke-static {v0, p1}, Ljava/time/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    .line 406
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 409
    .end local v0    # "offset":Ljava/time/ZoneOffset;
    :cond_23
    iget-object v5, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v5, v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 410
    iget-object v6, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v7, v6

    move v5, v4

    :goto_2d
    if-ge v5, v7, :cond_37

    aget-wide v2, v6, v5

    .line 411
    .restart local v2    # "trans":J
    invoke-static {v2, v3, p1}, Ljava/time/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 410
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 413
    .end local v2    # "trans":J
    :cond_37
    iget-object v6, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v7, v6

    move v5, v4

    :goto_3b
    if-ge v5, v7, :cond_45

    aget-object v0, v6, v5

    .line 414
    .restart local v0    # "offset":Ljava/time/ZoneOffset;
    invoke-static {v0, p1}, Ljava/time/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    .line 413
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 416
    .end local v0    # "offset":Ljava/time/ZoneOffset;
    :cond_45
    iget-object v5, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v5, v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeByte(I)V

    .line 417
    iget-object v5, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v6, v5

    :goto_4e
    if-ge v4, v6, :cond_58

    aget-object v1, v5, v4

    .line 418
    .local v1, "rule":Ljava/time/zone/ZoneOffsetTransitionRule;
    invoke-virtual {v1, p1}, Ljava/time/zone/ZoneOffsetTransitionRule;->writeExternal(Ljava/io/DataOutput;)V

    .line 417
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 420
    .end local v1    # "rule":Ljava/time/zone/ZoneOffsetTransitionRule;
    :cond_58
    return-void
.end method
