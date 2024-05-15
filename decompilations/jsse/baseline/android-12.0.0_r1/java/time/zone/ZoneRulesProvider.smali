.class public abstract Ljava/time/zone/ZoneRulesProvider;
.super Ljava/lang/Object;
.source "ZoneRulesProvider.java"


# static fields
.field private static final blacklist PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/time/zone/ZoneRulesProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ZONES:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/time/zone/ZoneRulesProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 134
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Ljava/time/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 138
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x200

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    .line 142
    new-instance v0, Ljava/time/zone/IcuZoneRulesProvider;

    invoke-direct {v0}, Ljava/time/zone/IcuZoneRulesProvider;-><init>()V

    .line 143
    .local v0, "provider":Ljava/time/zone/ZoneRulesProvider;
    invoke-static {v0}, Ljava/time/zone/ZoneRulesProvider;->registerProvider(Ljava/time/zone/ZoneRulesProvider;)V

    .line 144
    .end local v0    # "provider":Ljava/time/zone/ZoneRulesProvider;
    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 1

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    return-void
.end method

.method public static blacklist getAvailableZoneIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Ljava/time/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static blacklist getProvider(Ljava/lang/String;)Ljava/time/zone/ZoneRulesProvider;
    .registers 5
    .param p0, "zoneId"    # Ljava/lang/String;

    .line 223
    sget-object v0, Ljava/time/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/zone/ZoneRulesProvider;

    .line 224
    .local v1, "provider":Ljava/time/zone/ZoneRulesProvider;
    if-nez v1, :cond_2f

    .line 225
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 226
    new-instance v0, Ljava/time/zone/ZoneRulesException;

    const-string v2, "No time-zone data files registered"

    invoke-direct {v0, v2}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_18
    new-instance v0, Ljava/time/zone/ZoneRulesException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown time-zone ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_2f
    return-object v1
.end method

.method public static blacklist getRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;
    .registers 3
    .param p0, "zoneId"    # Ljava/lang/String;
    .param p1, "forCaching"    # Z

    .line 182
    const-string v0, "zoneId"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    invoke-static {p0}, Ljava/time/zone/ZoneRulesProvider;->getProvider(Ljava/lang/String;)Ljava/time/zone/ZoneRulesProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/time/zone/ZoneRulesProvider;->provideRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .registers 2
    .param p0, "zoneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Ljava/time/zone/ZoneRules;",
            ">;"
        }
    .end annotation

    .line 211
    const-string v0, "zoneId"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    invoke-static {p0}, Ljava/time/zone/ZoneRulesProvider;->getProvider(Ljava/lang/String;)Ljava/time/zone/ZoneRulesProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRulesProvider;->provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist refresh()Z
    .registers 4

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "changed":Z
    sget-object v1, Ljava/time/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/zone/ZoneRulesProvider;

    .line 299
    .local v2, "provider":Ljava/time/zone/ZoneRulesProvider;
    invoke-virtual {v2}, Ljava/time/zone/ZoneRulesProvider;->provideRefresh()Z

    move-result v3

    or-int/2addr v0, v3

    .line 300
    .end local v2    # "provider":Ljava/time/zone/ZoneRulesProvider;
    goto :goto_7

    .line 301
    :cond_19
    return v0
.end method

.method public static blacklist registerProvider(Ljava/time/zone/ZoneRulesProvider;)V
    .registers 2
    .param p0, "provider"    # Ljava/time/zone/ZoneRulesProvider;

    .line 250
    const-string v0, "provider"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    invoke-static {p0}, Ljava/time/zone/ZoneRulesProvider;->registerProvider0(Ljava/time/zone/ZoneRulesProvider;)V

    .line 252
    sget-object v0, Ljava/time/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method private static blacklist registerProvider0(Ljava/time/zone/ZoneRulesProvider;)V
    .registers 6
    .param p0, "provider"    # Ljava/time/zone/ZoneRulesProvider;

    .line 262
    invoke-virtual {p0}, Ljava/time/zone/ZoneRulesProvider;->provideZoneIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 263
    .local v1, "zoneId":Ljava/lang/String;
    const-string v2, "zoneId"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    sget-object v2, Ljava/time/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/zone/ZoneRulesProvider;

    .line 265
    .local v2, "old":Ljava/time/zone/ZoneRulesProvider;
    if-nez v2, :cond_24

    .line 270
    .end local v1    # "zoneId":Ljava/lang/String;
    .end local v2    # "old":Ljava/time/zone/ZoneRulesProvider;
    goto :goto_8

    .line 266
    .restart local v1    # "zoneId":Ljava/lang/String;
    .restart local v2    # "old":Ljava/time/zone/ZoneRulesProvider;
    :cond_24
    new-instance v0, Ljava/time/zone/ZoneRulesException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to register zone as one already registered with that ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", currently loading from provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    .end local v1    # "zoneId":Ljava/lang/String;
    .end local v2    # "old":Ljava/time/zone/ZoneRulesProvider;
    :cond_43
    return-void
.end method


# virtual methods
.method protected blacklist provideRefresh()Z
    .registers 2

    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract blacklist provideRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;
.end method

.method protected abstract blacklist provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Ljava/time/zone/ZoneRules;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract blacklist provideZoneIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
