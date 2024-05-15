.class public final Ljava/time/zone/ZoneRules;
.super Ljava/lang/Object;
.source "ZoneRules.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final greylist-max-o EMPTY_LASTRULES:[Ljava/time/zone/ZoneOffsetTransitionRule;

.field private static final greylist-max-o EMPTY_LDT_ARRAY:[Ljava/time/LocalDateTime;

.field private static final greylist-max-o EMPTY_LONG_ARRAY:[J

.field private static final greylist-max-o LAST_CACHED_YEAR:I = 0x834

.field private static final whitelist serialVersionUID:J = 0x2a3f985312278703L


# instance fields
.field private final greylist-max-o lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

.field private final transient greylist-max-o lastRulesCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o savingsInstantTransitions:[J

.field private final greylist-max-o savingsLocalTransitions:[Ljava/time/LocalDateTime;

.field private final greylist-max-o standardOffsets:[Ljava/time/ZoneOffset;

.field private final greylist-max-o standardTransitions:[J

.field private final greylist-max-o wallOffsets:[Ljava/time/ZoneOffset;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 155
    const/4 v0, 0x0

    new-array v1, v0, [J

    sput-object v1, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    .line 159
    new-array v1, v0, [Ljava/time/zone/ZoneOffsetTransitionRule;

    sput-object v1, Ljava/time/zone/ZoneRules;->EMPTY_LASTRULES:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 164
    new-array v0, v0, [Ljava/time/LocalDateTime;

    sput-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Ljava/time/LocalDateTime;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/time/ZoneOffset;)V
    .registers 4
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 310
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/time/ZoneOffset;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    .line 311
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 312
    sget-object v1, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    iput-object v1, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    .line 313
    iput-object v1, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 314
    sget-object v1, Ljava/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Ljava/time/LocalDateTime;

    iput-object v1, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    .line 315
    iput-object v0, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    .line 316
    sget-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LASTRULES:[Ljava/time/zone/ZoneOffsetTransitionRule;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 317
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .param p1, "baseStandardOffset"    # Ljava/time/ZoneOffset;
    .param p2, "baseWallOffset"    # Ljava/time/ZoneOffset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/ZoneOffset;",
            "Ljava/util/List<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List<",
            "Ljava/time/zone/ZoneOffsetTransitionRule;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p3, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local p4, "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local p5, "lastRules":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 220
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    .line 222
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/time/ZoneOffset;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    .line 223
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 225
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 226
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v3

    aput-object v3, v1, v2

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 230
    .end local v0    # "i":I
    :cond_47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v0, "localTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/LocalDateTime;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, "localTransitionOffsetList":Ljava/util/List;, "Ljava/util/List<Ljava/time/ZoneOffset;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/zone/ZoneOffsetTransition;

    .line 234
    .local v3, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 235
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 238
    :cond_79
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :goto_87
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v3    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    goto :goto_58

    .line 243
    :cond_8f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/time/LocalDateTime;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/time/LocalDateTime;

    iput-object v2, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    .line 244
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/time/ZoneOffset;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/time/ZoneOffset;

    iput-object v2, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    .line 247
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 248
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b4
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_cb

    .line 249
    iget-object v3, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    .line 253
    .end local v2    # "i":I
    :cond_cb
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_e2

    .line 256
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/time/zone/ZoneOffsetTransitionRule;

    invoke-interface {p5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/time/zone/ZoneOffsetTransitionRule;

    iput-object v2, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 257
    return-void

    .line 254
    :cond_e2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Too many transition rules"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private constructor greylist-max-o <init>([J[Ljava/time/ZoneOffset;[J[Ljava/time/ZoneOffset;[Ljava/time/zone/ZoneOffsetTransitionRule;)V
    .registers 13
    .param p1, "standardTransitions"    # [J
    .param p2, "standardOffsets"    # [Ljava/time/ZoneOffset;
    .param p3, "savingsInstantTransitions"    # [J
    .param p4, "wallOffsets"    # [Ljava/time/ZoneOffset;
    .param p5, "lastRules"    # [Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

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
    array-length v0, p3

    if-nez v0, :cond_1c

    .line 282
    sget-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Ljava/time/LocalDateTime;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    goto :goto_66

    .line 285
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v0, "localTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/LocalDateTime;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    array-length v2, p3

    if-ge v1, v2, :cond_58

    .line 287
    aget-object v2, p4, v1

    .line 288
    .local v2, "before":Ljava/time/ZoneOffset;
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p4, v3

    .line 289
    .local v3, "after":Ljava/time/ZoneOffset;
    new-instance v4, Ljava/time/zone/ZoneOffsetTransition;

    aget-wide v5, p3, v1

    invoke-direct {v4, v5, v6, v2, v3}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    .line 290
    .local v4, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 291
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 294
    :cond_47
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v2    # "before":Ljava/time/ZoneOffset;
    .end local v3    # "after":Ljava/time/ZoneOffset;
    .end local v4    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 298
    .end local v1    # "i":I
    :cond_58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/time/LocalDateTime;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/time/LocalDateTime;

    iput-object v1, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    .line 300
    .end local v0    # "localTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/LocalDateTime;>;"
    :goto_66
    return-void
.end method

.method private greylist-max-o findOffsetInfo(Ljava/time/LocalDateTime;Ljava/time/zone/ZoneOffsetTransition;)Ljava/lang/Object;
    .registers 5
    .param p1, "dt"    # Ljava/time/LocalDateTime;
    .param p2, "trans"    # Ljava/time/zone/ZoneOffsetTransition;

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

.method private greylist-max-o findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;
    .registers 7
    .param p1, "year"    # I

    .line 722
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 723
    .local v0, "yearObj":Ljava/lang/Integer;
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/time/zone/ZoneOffsetTransition;

    .line 724
    .local v1, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v1, :cond_f

    .line 725
    return-object v1

    .line 727
    :cond_f
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 728
    .local v2, "ruleArray":[Ljava/time/zone/ZoneOffsetTransitionRule;
    array-length v3, v2

    new-array v1, v3, [Ljava/time/zone/ZoneOffsetTransition;

    .line 729
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    array-length v4, v2

    if-ge v3, v4, :cond_23

    .line 730
    aget-object v4, v2, v3

    invoke-virtual {v4, p1}, Ljava/time/zone/ZoneOffsetTransitionRule;->createTransition(I)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v4

    aput-object v4, v1, v3

    .line 729
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 732
    .end local v3    # "i":I
    :cond_23
    const/16 v3, 0x834

    if-ge p1, v3, :cond_2c

    .line 733
    iget-object v3, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    :cond_2c
    return-object v1
.end method

.method private greylist-max-o findYear(JLjava/time/ZoneOffset;)I
    .registers 9
    .param p1, "epochSecond"    # J
    .param p3, "offset"    # Ljava/time/ZoneOffset;

    .line 926
    invoke-virtual {p3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    .line 927
    .local v0, "localSecond":J
    const-wide/32 v2, 0x15180

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v2

    .line 928
    .local v2, "localEpochDay":J
    invoke-static {v2, v3}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalDate;->getYear()I

    move-result v4

    return v4
.end method

.method private greylist-max-o getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;
    .registers 9
    .param p1, "dt"    # Ljava/time/LocalDateTime;

    .line 635
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 636
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    aget-object v0, v0, v1

    return-object v0

    .line 639
    :cond_b
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v0, v0

    if-lez v0, :cond_43

    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    .line 640
    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 641
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v0

    .line 642
    .local v0, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    const/4 v2, 0x0

    .line 643
    .local v2, "info":Ljava/lang/Object;
    array-length v3, v0

    :goto_27
    if-ge v1, v3, :cond_42

    aget-object v4, v0, v1

    .line 644
    .local v4, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-direct {p0, p1, v4}, Ljava/time/zone/ZoneRules;->findOffsetInfo(Ljava/time/LocalDateTime;Ljava/time/zone/ZoneOffsetTransition;)Ljava/lang/Object;

    move-result-object v2

    .line 645
    instance-of v5, v2, Ljava/time/zone/ZoneOffsetTransition;

    if-nez v5, :cond_41

    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    goto :goto_41

    .line 643
    .end local v4    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 646
    .restart local v4    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_41
    :goto_41
    return-object v2

    .line 649
    .end local v4    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_42
    return-object v2

    .line 653
    .end local v0    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    .end local v2    # "info":Ljava/lang/Object;
    :cond_43
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 654
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_51

    .line 656
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v1, v2, v1

    return-object v1

    .line 658
    :cond_51
    if-gez v0, :cond_57

    .line 660
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    goto :goto_6c

    .line 661
    :cond_57
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_6c

    aget-object v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    .line 662
    invoke-virtual {v2, v1}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 664
    add-int/lit8 v0, v0, 0x1

    .line 666
    :cond_6c
    :goto_6c
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_9a

    .line 668
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    aget-object v2, v1, v0

    .line 669
    .local v2, "dtBefore":Ljava/time/LocalDateTime;
    add-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    .line 670
    .local v1, "dtAfter":Ljava/time/LocalDateTime;
    iget-object v3, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    div-int/lit8 v4, v0, 0x2

    aget-object v4, v3, v4

    .line 671
    .local v4, "offsetBefore":Ljava/time/ZoneOffset;
    div-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v3, v3, v5

    .line 672
    .local v3, "offsetAfter":Ljava/time/ZoneOffset;
    invoke-virtual {v3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    if-le v5, v6, :cond_94

    .line 674
    new-instance v5, Ljava/time/zone/ZoneOffsetTransition;

    invoke-direct {v5, v2, v4, v3}, Ljava/time/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v5

    .line 677
    :cond_94
    new-instance v5, Ljava/time/zone/ZoneOffsetTransition;

    invoke-direct {v5, v1, v4, v3}, Ljava/time/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v5

    .line 681
    .end local v1    # "dtAfter":Ljava/time/LocalDateTime;
    .end local v2    # "dtBefore":Ljava/time/LocalDateTime;
    .end local v3    # "offsetAfter":Ljava/time/ZoneOffset;
    .end local v4    # "offsetBefore":Ljava/time/ZoneOffset;
    :cond_9a
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static whitelist core-platform-api test-api of(Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneRules;
    .registers 2
    .param p0, "offset"    # Ljava/time/ZoneOffset;

    .line 198
    const-string v0, "offset"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava/time/zone/ZoneRules;

    invoke-direct {v0, p0}, Ljava/time/zone/ZoneRules;-><init>(Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/time/zone/ZoneRules;
    .registers 12
    .param p0, "baseStandardOffset"    # Ljava/time/ZoneOffset;
    .param p1, "baseWallOffset"    # Ljava/time/ZoneOffset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/ZoneOffset;",
            "Ljava/util/List<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List<",
            "Ljava/time/zone/ZoneOffsetTransitionRule;",
            ">;)",
            "Ljava/time/zone/ZoneRules;"
        }
    .end annotation

    .line 181
    .local p2, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local p3, "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local p4, "lastRules":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    const-string v0, "baseStandardOffset"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    const-string v0, "baseWallOffset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    const-string v0, "standardOffsetTransitionList"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    const-string v0, "transitionList"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    const-string v0, "lastRules"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    new-instance v0, Ljava/time/zone/ZoneRules;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ljava/time/zone/ZoneRules;-><init>(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneRules;
    .registers 16
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 430
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 431
    .local v0, "stdSize":I
    if-nez v0, :cond_9

    sget-object v1, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    goto :goto_b

    .line 432
    :cond_9
    new-array v1, v0, [J

    :goto_b
    nop

    .line 433
    .local v1, "stdTrans":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_18

    .line 434
    invoke-static {p0}, Ljava/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 433
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 436
    .end local v2    # "i":I
    :cond_18
    add-int/lit8 v2, v0, 0x1

    new-array v8, v2, [Ljava/time/ZoneOffset;

    .line 437
    .local v8, "stdOffsets":[Ljava/time/ZoneOffset;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1d
    array-length v3, v8

    if-ge v2, v3, :cond_29

    .line 438
    invoke-static {p0}, Ljava/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v3

    aput-object v3, v8, v2

    .line 437
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 440
    .end local v2    # "i":I
    :cond_29
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v9

    .line 441
    .local v9, "savSize":I
    if-nez v9, :cond_32

    sget-object v2, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    goto :goto_34

    .line 442
    :cond_32
    new-array v2, v9, [J

    :goto_34
    move-object v10, v2

    .line 443
    .local v10, "savTrans":[J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_36
    if-ge v2, v9, :cond_41

    .line 444
    invoke-static {p0}, Ljava/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v3

    aput-wide v3, v10, v2

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 446
    .end local v2    # "i":I
    :cond_41
    add-int/lit8 v2, v9, 0x1

    new-array v11, v2, [Ljava/time/ZoneOffset;

    .line 447
    .local v11, "savOffsets":[Ljava/time/ZoneOffset;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_46
    array-length v3, v11

    if-ge v2, v3, :cond_52

    .line 448
    invoke-static {p0}, Ljava/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v3

    aput-object v3, v11, v2

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 450
    .end local v2    # "i":I
    :cond_52
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v12

    .line 451
    .local v12, "ruleSize":I
    if-nez v12, :cond_5b

    .line 452
    sget-object v2, Ljava/time/zone/ZoneRules;->EMPTY_LASTRULES:[Ljava/time/zone/ZoneOffsetTransitionRule;

    goto :goto_5d

    :cond_5b
    new-array v2, v12, [Ljava/time/zone/ZoneOffsetTransitionRule;

    :goto_5d
    move-object v13, v2

    .line 453
    .local v13, "rules":[Ljava/time/zone/ZoneOffsetTransitionRule;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5f
    if-ge v2, v12, :cond_6a

    .line 454
    invoke-static {p0}, Ljava/time/zone/ZoneOffsetTransitionRule;->readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v3

    aput-object v3, v13, v2

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 456
    .end local v2    # "i":I
    :cond_6a
    new-instance v14, Ljava/time/zone/ZoneRules;

    move-object v2, v14

    move-object v3, v1

    move-object v4, v8

    move-object v5, v10

    move-object v6, v11

    move-object v7, v13

    invoke-direct/range {v2 .. v7}, Ljava/time/zone/ZoneRules;-><init>([J[Ljava/time/ZoneOffset;[J[Ljava/time/ZoneOffset;[Ljava/time/zone/ZoneOffsetTransitionRule;)V

    return-object v14
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 326
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 392
    new-instance v0, Ljava/time/zone/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/time/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherRules"    # Ljava/lang/Object;

    .line 990
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 991
    return v0

    .line 993
    :cond_4
    instance-of v1, p1, Ljava/time/zone/ZoneRules;

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    .line 994
    move-object v1, p1

    check-cast v1, Ljava/time/zone/ZoneRules;

    .line 995
    .local v1, "other":Ljava/time/zone/ZoneRules;
    iget-object v3, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    iget-object v4, v1, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    iget-object v4, v1, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    .line 996
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v4, v1, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 997
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    iget-object v4, v1, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    .line 998
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    iget-object v4, v1, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 999
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, v2

    .line 995
    :goto_40
    return v0

    .line 1001
    .end local v1    # "other":Ljava/time/zone/ZoneRules;
    :cond_41
    return v2
.end method

.method public whitelist core-platform-api test-api getDaylightSavings(Ljava/time/Instant;)Ljava/time/Duration;
    .registers 6
    .param p1, "instant"    # Ljava/time/Instant;

    .line 781
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_8

    .line 782
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    return-object v0

    .line 784
    :cond_8
    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 785
    .local v0, "standardOffset":Ljava/time/ZoneOffset;
    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 786
    .local v1, "actualOffset":Ljava/time/ZoneOffset;
    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    return-object v2
.end method

.method public whitelist core-platform-api test-api getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;
    .registers 10
    .param p1, "instant"    # Ljava/time/Instant;

    .line 480
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_b

    .line 481
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 483
    :cond_b
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 485
    .local v0, "epochSec":J
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v2, v2

    if-lez v2, :cond_4a

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    cmp-long v2, v0, v2

    if-lez v2, :cond_4a

    .line 487
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Ljava/time/zone/ZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v2

    .line 488
    .local v2, "year":I
    invoke-direct {p0, v2}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v3

    .line 489
    .local v3, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    const/4 v4, 0x0

    .line 490
    .local v4, "trans":Ljava/time/zone/ZoneOffsetTransition;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_30
    array-length v6, v3

    if-ge v5, v6, :cond_45

    .line 491
    aget-object v4, v3, v5

    .line 492
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-gez v6, :cond_42

    .line 493
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v6

    return-object v6

    .line 490
    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 496
    .end local v5    # "i":I
    :cond_45
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v5

    return-object v5

    .line 500
    .end local v2    # "year":I
    .end local v3    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    .end local v4    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_4a
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    .line 501
    .local v2, "index":I
    if-gez v2, :cond_55

    .line 503
    neg-int v3, v2

    add-int/lit8 v2, v3, -0x2

    .line 505
    :cond_55
    iget-object v3, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    return-object v3
.end method

.method public whitelist core-platform-api test-api getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;
    .registers 4
    .param p1, "localDateTime"    # Ljava/time/LocalDateTime;

    .line 537
    invoke-direct {p0, p1}, Ljava/time/zone/ZoneRules;->getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    .line 538
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_10

    .line 539
    move-object v1, v0

    check-cast v1, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 541
    :cond_10
    move-object v1, v0

    check-cast v1, Ljava/time/ZoneOffset;

    return-object v1
.end method

.method public whitelist core-platform-api test-api getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;
    .registers 7
    .param p1, "instant"    # Ljava/time/Instant;

    .line 751
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_b

    .line 752
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 754
    :cond_b
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 755
    .local v0, "epochSec":J
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

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

.method public whitelist core-platform-api test-api getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;
    .registers 4
    .param p1, "localDateTime"    # Ljava/time/LocalDateTime;

    .line 630
    invoke-direct {p0, p1}, Ljava/time/zone/ZoneRules;->getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    .line 631
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/time/zone/ZoneOffsetTransition;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public whitelist core-platform-api test-api getTransitionRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/zone/ZoneOffsetTransitionRule;",
            ">;"
        }
    .end annotation

    .line 973
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getTransitions()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;"
        }
    .end annotation

    .line 944
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 945
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v3, v2

    if-ge v1, v3, :cond_20

    .line 946
    new-instance v3, Ljava/time/zone/ZoneOffsetTransition;

    aget-wide v4, v2, v1

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v6, v2, v1

    add-int/lit8 v7, v1, 0x1

    aget-object v2, v2, v7

    invoke-direct {v3, v4, v5, v6, v2}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 948
    .end local v1    # "i":I
    :cond_20
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;
    .registers 4
    .param p1, "localDateTime"    # Ljava/time/LocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDateTime;",
            ")",
            "Ljava/util/List<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation

    .line 588
    invoke-direct {p0, p1}, Ljava/time/zone/ZoneRules;->getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    .line 589
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_10

    .line 590
    move-object v1, v0

    check-cast v1, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->getValidOffsets()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 592
    :cond_10
    move-object v1, v0

    check-cast v1, Ljava/time/ZoneOffset;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 1011
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    .line 1012
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 1013
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    .line 1014
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 1015
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 1011
    return v0
.end method

.method public whitelist core-platform-api test-api isDaylightSavings(Ljava/time/Instant;)Z
    .registers 4
    .param p1, "instant"    # Ljava/time/Instant;

    .line 804
    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist core-platform-api test-api isFixedOffset()Z
    .registers 2

    .line 465
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist core-platform-api test-api isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z
    .registers 4
    .param p1, "localDateTime"    # Ljava/time/LocalDateTime;
    .param p2, "offset"    # Ljava/time/ZoneOffset;

    .line 822
    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api nextTransition(Ljava/time/Instant;)Ljava/time/zone/ZoneOffsetTransition;
    .registers 13
    .param p1, "instant"    # Ljava/time/Instant;

    .line 837
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 838
    return-object v1

    .line 840
    :cond_7
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    .line 842
    .local v2, "epochSec":J
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, v0, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4d

    .line 843
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v0, v0

    if-nez v0, :cond_1c

    .line 844
    return-object v1

    .line 847
    :cond_1c
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v0, v4

    invoke-direct {p0, v2, v3, v0}, Ljava/time/zone/ZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v0

    .line 848
    .local v0, "year":I
    invoke-direct {p0, v0}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v4

    .line 849
    .local v4, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_2e
    if-ge v7, v5, :cond_3e

    aget-object v8, v4, v7

    .line 850
    .local v8, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-virtual {v8}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v9

    cmp-long v9, v2, v9

    if-gez v9, :cond_3b

    .line 851
    return-object v8

    .line 849
    .end local v8    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_3b
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 855
    :cond_3e
    const v5, 0x3b9ac9ff

    if-ge v0, v5, :cond_4c

    .line 856
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v1

    .line 857
    .end local v4    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    .local v1, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    aget-object v4, v1, v6

    return-object v4

    .line 859
    .end local v1    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    .restart local v4    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    :cond_4c
    return-object v1

    .line 863
    .end local v0    # "year":I
    .end local v4    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    :cond_4d
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 864
    .local v0, "index":I
    if-gez v0, :cond_57

    .line 865
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    .end local v0    # "index":I
    .local v1, "index":I
    goto :goto_59

    .line 867
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_57
    add-int/lit8 v1, v0, 0x1

    .line 869
    .end local v0    # "index":I
    .restart local v1    # "index":I
    :goto_59
    new-instance v0, Ljava/time/zone/ZoneOffsetTransition;

    iget-object v4, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    aget-wide v4, v4, v1

    iget-object v6, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v7, v6, v1

    add-int/lit8 v8, v1, 0x1

    aget-object v6, v6, v8

    invoke-direct {v0, v4, v5, v7, v6}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api previousTransition(Ljava/time/Instant;)Ljava/time/zone/ZoneOffsetTransition;
    .registers 13
    .param p1, "instant"    # Ljava/time/Instant;

    .line 884
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 885
    return-object v1

    .line 887
    :cond_7
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    .line 888
    .local v2, "epochSec":J
    invoke-virtual {p1}, Ljava/time/Instant;->getNano()I

    move-result v0

    if-lez v0, :cond_1d

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-gez v0, :cond_1d

    .line 889
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 893
    :cond_1d
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, v0, v4

    .line 894
    .local v4, "lastHistoric":J
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v0, v0

    if-lez v0, :cond_63

    cmp-long v0, v2, v4

    if-lez v0, :cond_63

    .line 896
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-object v0, v0, v6

    .line 897
    .local v0, "lastHistoricOffset":Ljava/time/ZoneOffset;
    invoke-direct {p0, v2, v3, v0}, Ljava/time/zone/ZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v6

    .line 898
    .local v6, "year":I
    invoke-direct {p0, v6}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v7

    .line 899
    .local v7, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    .local v8, "i":I
    :goto_3f
    if-ltz v8, :cond_51

    .line 900
    aget-object v9, v7, v8

    invoke-virtual {v9}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v9

    cmp-long v9, v2, v9

    if-lez v9, :cond_4e

    .line 901
    aget-object v1, v7, v8

    return-object v1

    .line 899
    :cond_4e
    add-int/lit8 v8, v8, -0x1

    goto :goto_3f

    .line 905
    .end local v8    # "i":I
    :cond_51
    invoke-direct {p0, v4, v5, v0}, Ljava/time/zone/ZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v8

    .line 906
    .local v8, "lastHistoricYear":I
    add-int/lit8 v6, v6, -0x1

    if-le v6, v8, :cond_63

    .line 907
    invoke-direct {p0, v6}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v1

    .line 908
    .end local v7    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    .local v1, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v1, v7

    return-object v7

    .line 914
    .end local v0    # "lastHistoricOffset":Ljava/time/ZoneOffset;
    .end local v1    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    .end local v6    # "year":I
    .end local v8    # "lastHistoricYear":I
    :cond_63
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 915
    .local v0, "index":I
    if-gez v0, :cond_6e

    .line 916
    neg-int v6, v0

    add-int/lit8 v0, v6, -0x1

    .line 918
    :cond_6e
    if-gtz v0, :cond_71

    .line 919
    return-object v1

    .line 921
    :cond_71
    new-instance v1, Ljava/time/zone/ZoneOffsetTransition;

    iget-object v6, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    add-int/lit8 v7, v0, -0x1

    aget-wide v6, v6, v7

    iget-object v8, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v9, v0, -0x1

    aget-object v9, v8, v9

    aget-object v8, v8, v0

    invoke-direct {v1, v6, v7, v9, v8}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZoneRules[currentStandardOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o writeExternal(Ljava/io/DataOutput;)V
    .registers 8
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 403
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_15

    aget-wide v4, v0, v3

    .line 404
    .local v4, "trans":J
    invoke-static {v4, v5, p1}, Ljava/time/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 403
    .end local v4    # "trans":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 406
    :cond_15
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    array-length v1, v0

    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_23

    aget-object v4, v0, v3

    .line 407
    .local v4, "offset":Ljava/time/ZoneOffset;
    invoke-static {v4, p1}, Ljava/time/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    .line 406
    .end local v4    # "offset":Ljava/time/ZoneOffset;
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 409
    :cond_23
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 410
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v1, v0

    move v3, v2

    :goto_2d
    if-ge v3, v1, :cond_37

    aget-wide v4, v0, v3

    .line 411
    .local v4, "trans":J
    invoke-static {v4, v5, p1}, Ljava/time/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 410
    .end local v4    # "trans":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 413
    :cond_37
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v1, v0

    move v3, v2

    :goto_3b
    if-ge v3, v1, :cond_45

    aget-object v4, v0, v3

    .line 414
    .local v4, "offset":Ljava/time/ZoneOffset;
    invoke-static {v4, p1}, Ljava/time/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    .line 413
    .end local v4    # "offset":Ljava/time/ZoneOffset;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 416
    :cond_45
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 417
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v1, v0

    :goto_4e
    if-ge v2, v1, :cond_58

    aget-object v3, v0, v2

    .line 418
    .local v3, "rule":Ljava/time/zone/ZoneOffsetTransitionRule;
    invoke-virtual {v3, p1}, Ljava/time/zone/ZoneOffsetTransitionRule;->writeExternal(Ljava/io/DataOutput;)V

    .line 417
    .end local v3    # "rule":Ljava/time/zone/ZoneOffsetTransitionRule;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 420
    :cond_58
    return-void
.end method
