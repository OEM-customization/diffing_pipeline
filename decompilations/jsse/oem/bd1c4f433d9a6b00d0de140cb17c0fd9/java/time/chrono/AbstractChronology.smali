.class public abstract Ljava/time/chrono/AbstractChronology;
.super Ljava/lang/Object;
.source "AbstractChronology.java"

# interfaces
.implements Ljava/time/chrono/Chronology;


# static fields
.field private static final CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/chrono/Chronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/chrono/Chronology;",
            ">;"
        }
    .end annotation
.end field

.field static final DATE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">;"
        }
    .end annotation
.end field

.field static final DATE_TIME_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<+",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">;>;"
        }
    .end annotation
.end field

.field static final INSTANT_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    sget-object v0, Ljava/time/chrono/-$Lambda$2u9I1kadVYC2Q_h8lznNWkqzo1s;->$INST$0:Ljava/time/chrono/-$Lambda$2u9I1kadVYC2Q_h8lznNWkqzo1s;

    .line 133
    check-cast v0, Ljava/io/Serializable;

    .line 132
    sput-object v0, Ljava/time/chrono/AbstractChronology;->DATE_ORDER:Ljava/util/Comparator;

    sget-object v0, Ljava/time/chrono/-$Lambda$2u9I1kadVYC2Q_h8lznNWkqzo1s;->$INST$1:Ljava/time/chrono/-$Lambda$2u9I1kadVYC2Q_h8lznNWkqzo1s;

    .line 140
    check-cast v0, Ljava/io/Serializable;

    .line 139
    sput-object v0, Ljava/time/chrono/AbstractChronology;->DATE_TIME_ORDER:Ljava/util/Comparator;

    sget-object v0, Ljava/time/chrono/-$Lambda$2u9I1kadVYC2Q_h8lznNWkqzo1s;->$INST$2:Ljava/time/chrono/-$Lambda$2u9I1kadVYC2Q_h8lznNWkqzo1s;

    .line 151
    check-cast v0, Ljava/io/Serializable;

    .line 150
    sput-object v0, Ljava/time/chrono/AbstractChronology;->INSTANT_ORDER:Ljava/util/Comparator;

    .line 162
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    .line 166
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 127
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    return-void
.end method

.method static getAvailableChronologies()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/time/chrono/Chronology;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    invoke-static {}, Ljava/time/chrono/AbstractChronology;->initCache()Z

    .line 341
    new-instance v2, Ljava/util/HashSet;

    sget-object v4, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 345
    .local v2, "chronos":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/time/chrono/Chronology;>;"
    const-class v4, Ljava/time/chrono/Chronology;

    invoke-static {v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v3

    .line 346
    .local v3, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/Chronology;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "chrono$iterator":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 347
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 349
    .end local v0    # "chrono":Ljava/time/chrono/Chronology;
    :cond_28
    return-object v2
.end method

.method private static initCache()Z
    .registers 8

    .prologue
    const/4 v7, 0x0

    .line 216
    sget-object v5, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v6, "ISO"

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6f

    .line 220
    sget-object v5, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-static {v5}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    .line 221
    sget-object v5, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    invoke-static {v5}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    .line 222
    sget-object v5, Ljava/time/chrono/MinguoChronology;->INSTANCE:Ljava/time/chrono/MinguoChronology;

    invoke-static {v5}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    .line 223
    sget-object v5, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    invoke-static {v5}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    .line 227
    const-class v5, Ljava/time/chrono/AbstractChronology;

    invoke-static {v5, v7}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v3

    .line 228
    .local v3, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/AbstractChronology;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "chrono$iterator":Ljava/util/Iterator;
    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/AbstractChronology;

    .line 229
    .local v0, "chrono":Ljava/time/chrono/AbstractChronology;
    invoke-virtual {v0}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v5, "ISO"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    invoke-static {v0}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    move-result-object v5

    if-eqz v5, :cond_2a

    .line 232
    :cond_49
    const-string/jumbo v5, "java.time.chrono"

    invoke-static {v5}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v4

    .line 233
    .local v4, "logger":Lsun/util/logging/PlatformLogger;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignoring duplicate Chronology, from ServiceLoader configuration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto :goto_2a

    .line 238
    .end local v0    # "chrono":Ljava/time/chrono/AbstractChronology;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_68
    sget-object v5, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-static {v5}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;

    .line 239
    const/4 v5, 0x1

    return v5

    .line 241
    .end local v1    # "chrono$iterator":Ljava/util/Iterator;
    .end local v3    # "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/AbstractChronology;>;"
    :cond_6f
    const/4 v5, 0x0

    return v5
.end method

.method static synthetic lambda$-java_time_chrono_AbstractChronology_5936(Ljava/time/chrono/ChronoLocalDate;Ljava/time/chrono/ChronoLocalDate;)I
    .registers 6
    .param p0, "date1"    # Ljava/time/chrono/ChronoLocalDate;
    .param p1, "date2"    # Ljava/time/chrono/ChronoLocalDate;

    .prologue
    .line 134
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$-java_time_chrono_AbstractChronology_6277(Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/chrono/ChronoLocalDateTime;)I
    .registers 8

    .prologue
    .line 141
    .local p0, "dateTime1":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<+Ljava/time/chrono/ChronoLocalDate;>;"
    .local p1, "dateTime2":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<+Ljava/time/chrono/ChronoLocalDate;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 142
    .local v0, "cmp":I
    if-nez v0, :cond_2a

    .line 143
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 145
    :cond_2a
    return v0
.end method

.method static synthetic lambda$-java_time_chrono_AbstractChronology_6799(Ljava/time/chrono/ChronoZonedDateTime;Ljava/time/chrono/ChronoZonedDateTime;)I
    .registers 8

    .prologue
    .line 152
    .local p0, "dateTime1":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    .local p1, "dateTime2":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 153
    .local v0, "cmp":I
    if-nez v0, :cond_24

    .line 154
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->getNano()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->getNano()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 156
    :cond_24
    return v0
.end method

.method static of(Ljava/lang/String;)Ljava/time/chrono/Chronology;
    .registers 7
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 293
    const-string/jumbo v3, "id"

    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 295
    :cond_6
    invoke-static {p0}, Ljava/time/chrono/AbstractChronology;->of0(Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object v0

    .line 296
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    if-eqz v0, :cond_d

    .line 297
    return-object v0

    .line 300
    :cond_d
    invoke-static {}, Ljava/time/chrono/AbstractChronology;->initCache()Z

    move-result v3

    if-nez v3, :cond_6

    .line 305
    const-class v3, Ljava/time/chrono/Chronology;

    invoke-static {v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v2

    .line 306
    .local v2, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/Chronology;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "chrono$iterator":Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "chrono":Ljava/time/chrono/Chronology;
    check-cast v0, Ljava/time/chrono/Chronology;

    .line 307
    .restart local v0    # "chrono":Ljava/time/chrono/Chronology;
    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 308
    :cond_3d
    return-object v0

    .line 311
    :cond_3e
    new-instance v3, Ljava/time/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown chronology: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static of0(Ljava/lang/String;)Ljava/time/chrono/Chronology;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 322
    sget-object v1, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 323
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    if-nez v0, :cond_12

    .line 324
    sget-object v1, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "chrono":Ljava/time/chrono/Chronology;
    check-cast v0, Ljava/time/chrono/Chronology;

    .line 326
    .restart local v0    # "chrono":Ljava/time/chrono/Chronology;
    :cond_12
    return-object v0
.end method

.method static ofLocale(Ljava/util/Locale;)Ljava/time/chrono/Chronology;
    .registers 8
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 255
    const-string/jumbo v4, "locale"

    invoke-static {p0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    const-string/jumbo v4, "ca"

    invoke-virtual {p0, v4}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "type":Ljava/lang/String;
    if-eqz v3, :cond_21

    const-string/jumbo v4, "iso"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    const-string/jumbo v4, "iso8601"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 258
    :cond_21
    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v4

    .line 267
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    :cond_24
    invoke-static {}, Ljava/time/chrono/AbstractChronology;->initCache()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 262
    .end local v0    # "chrono":Ljava/time/chrono/Chronology;
    :cond_2a
    sget-object v4, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 263
    .restart local v0    # "chrono":Ljava/time/chrono/Chronology;
    if-eqz v0, :cond_24

    .line 264
    return-object v0

    .line 272
    :cond_35
    const-class v4, Ljava/time/chrono/Chronology;

    invoke-static {v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v2

    .line 273
    .local v2, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/Chronology;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "chrono$iterator":Ljava/util/Iterator;
    :cond_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "chrono":Ljava/time/chrono/Chronology;
    check-cast v0, Ljava/time/chrono/Chronology;

    .line 274
    .restart local v0    # "chrono":Ljava/time/chrono/Chronology;
    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 275
    return-object v0

    .line 278
    :cond_56
    new-instance v4, Ljava/time/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown calendar system: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/chrono/Chronology;
    .registers 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 781
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Ljava/time/chrono/Chronology;->of(Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object v1

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 773
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;
    .registers 2
    .param p0, "chrono"    # Ljava/time/chrono/Chronology;

    .prologue
    .line 177
    invoke-interface {p0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method static registerChrono(Ljava/time/chrono/Chronology;Ljava/lang/String;)Ljava/time/chrono/Chronology;
    .registers 5
    .param p0, "chrono"    # Ljava/time/chrono/Chronology;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 190
    sget-object v2, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 191
    .local v0, "prev":Ljava/time/chrono/Chronology;
    if-nez v0, :cond_15

    .line 192
    invoke-interface {p0}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "type":Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 194
    sget-object v2, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .end local v1    # "type":Ljava/lang/String;
    :cond_15
    return-object v0
.end method


# virtual methods
.method addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V
    .registers 10
    .param p2, "field"    # Ljava/time/temporal/ChronoField;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/ChronoField;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 674
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 675
    .local v0, "old":Ljava/lang/Long;
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p3

    if-eqz v1, :cond_4b

    .line 676
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Conflict found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " differs from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 678
    :cond_4b
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 681
    check-cast p1, Ljava/time/chrono/Chronology;

    invoke-virtual {p0, p1}, Ljava/time/chrono/AbstractChronology;->compareTo(Ljava/time/chrono/Chronology;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/chrono/Chronology;)I
    .registers 4
    .param p1, "other"    # Ljava/time/chrono/Chronology;

    .prologue
    .line 698
    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 715
    if-ne p0, p1, :cond_5

    .line 716
    return v0

    .line 718
    :cond_5
    instance-of v2, p1, Ljava/time/chrono/AbstractChronology;

    if-eqz v2, :cond_14

    .line 719
    check-cast p1, Ljava/time/chrono/AbstractChronology;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/time/chrono/AbstractChronology;->compareTo(Ljava/time/chrono/Chronology;)I

    move-result v2

    if-nez v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11

    .line 721
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_14
    return v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 737
    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method resolveAligned(Ljava/time/chrono/ChronoLocalDate;JJJ)Ljava/time/chrono/ChronoLocalDate;
    .registers 16
    .param p1, "base"    # Ljava/time/chrono/ChronoLocalDate;
    .param p2, "months"    # J
    .param p4, "weeks"    # J
    .param p6, "dow"    # J

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x7

    .line 650
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, p2, p3, v1}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v1, p4, p5, v2}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 651
    .local v0, "date":Ljava/time/chrono/ChronoLocalDate;
    cmp-long v1, p6, v4

    if-lez v1, :cond_30

    .line 652
    sub-long v2, p6, v6

    div-long/2addr v2, v4

    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 653
    sub-long v2, p6, v6

    rem-long/2addr v2, v4

    add-long p6, v2, v6

    .line 658
    :cond_22
    :goto_22
    long-to-int v1, p6

    invoke-static {v1}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v1

    invoke-static {v1}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 654
    :cond_30
    cmp-long v1, p6, v6

    if-gez v1, :cond_22

    .line 655
    invoke-static {p6, p7, v4, v5}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    div-long/2addr v2, v4

    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 656
    const-wide/16 v2, 0x6

    add-long/2addr v2, p6

    rem-long/2addr v2, v4

    add-long p6, v2, v6

    goto :goto_22
.end method

.method public resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 7
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 455
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 456
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/AbstractChronology;->dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 460
    :cond_1a
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveProlepticMonth(Ljava/util/Map;Ljava/time/format/ResolverStyle;)V

    .line 463
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYearOfEra(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 464
    .local v0, "resolved":Ljava/time/chrono/ChronoLocalDate;
    if-eqz v0, :cond_24

    .line 465
    return-object v0

    .line 469
    :cond_24
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 470
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 471
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 472
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYMD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 474
    :cond_41
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 475
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 476
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYMAA(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 478
    :cond_56
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 479
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYMAD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 483
    :cond_63
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 484
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 486
    :cond_70
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 487
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 488
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYAA(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 490
    :cond_85
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 491
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveYAD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 495
    :cond_92
    return-object v2
.end method

.method resolveProlepticMonth(Ljava/util/Map;Ljava/time/format/ResolverStyle;)V
    .registers 9
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v2, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 500
    .local v1, "pMonth":Ljava/lang/Long;
    if-eqz v1, :cond_45

    .line 501
    sget-object v2, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq p2, v2, :cond_17

    .line 502
    sget-object v2, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 506
    :cond_17
    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->dateNow()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 507
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const-wide/16 v4, 0x1

    .line 506
    invoke-interface {v2, v3, v4, v5}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 507
    sget-object v3, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 506
    invoke-interface {v2, v3, v4, v5}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 508
    .local v0, "chronoDate":Ljava/time/chrono/ChronoLocalDate;
    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, p1, v2, v4, v5}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 509
    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, p1, v2, v4, v5}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 511
    .end local v0    # "chronoDate":Ljava/time/chrono/ChronoLocalDate;
    :cond_45
    return-void
.end method

.method resolveYAA(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 15
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v8, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v8}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v9

    sget-object v8, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v8, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v9, v10, v11, v8}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    .line 619
    .local v3, "y":I
    sget-object v8, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p2, v8, :cond_52

    .line 620
    sget-object v8, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v6

    .line 621
    .local v6, "weeks":J
    sget-object v8, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    .line 622
    .local v4, "days":J
    const/4 v8, 0x1

    invoke-virtual {p0, v3, v8}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v8

    sget-object v9, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v8, v6, v7, v9}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v8

    sget-object v9, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v8, v4, v5, v9}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v8

    return-object v8

    .line 624
    .end local v4    # "days":J
    .end local v6    # "weeks":J
    :cond_52
    sget-object v8, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v8}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v9

    sget-object v8, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v8, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v9, v10, v11, v8}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    .line 625
    .local v1, "aw":I
    sget-object v8, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v8}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v9

    sget-object v8, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v8, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v9, v10, v11, v8}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    .line 626
    .local v0, "ad":I
    const/4 v8, 0x1

    invoke-virtual {p0, v3, v8}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v8

    add-int/lit8 v9, v1, -0x1

    mul-int/lit8 v9, v9, 0x7

    add-int/lit8 v10, v0, -0x1

    add-int/2addr v9, v10

    int-to-long v10, v9

    sget-object v9, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v8, v10, v11, v9}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 627
    .local v2, "date":Ljava/time/chrono/ChronoLocalDate;
    sget-object v8, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p2, v8, :cond_aa

    sget-object v8, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v8}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v8

    if-eq v8, v3, :cond_aa

    .line 628
    new-instance v8, Ljava/time/DateTimeException;

    const-string/jumbo v9, "Strict mode rejected resolved date as it is in a different year"

    invoke-direct {v8, v9}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 630
    :cond_aa
    return-object v2
.end method

.method resolveYAD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 15
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .line 634
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v3, v0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v11

    .line 635
    .local v11, "y":I
    sget-object v0, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p2, v0, :cond_4d

    .line 636
    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    .line 637
    .local v4, "weeks":J
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v6

    .line 638
    .local v6, "dow":J
    const/4 v0, 0x1

    invoke-virtual {p0, v11, v0}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Ljava/time/chrono/AbstractChronology;->resolveAligned(Ljava/time/chrono/ChronoLocalDate;JJJ)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 640
    .end local v4    # "weeks":J
    .end local v6    # "dow":J
    :cond_4d
    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v3, v0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v8

    .line 641
    .local v8, "aw":I
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v3, v0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v10

    .line 642
    .local v10, "dow":I
    const/4 v0, 0x1

    invoke-virtual {p0, v11, v0}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    add-int/lit8 v1, v8, -0x1

    mul-int/lit8 v1, v1, 0x7

    int-to-long v2, v1

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-static {v10}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v1

    invoke-static {v1}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v9

    .line 643
    .local v9, "date":Ljava/time/chrono/ChronoLocalDate;
    sget-object v0, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p2, v0, :cond_ae

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    if-eq v0, v11, :cond_ae

    .line 644
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Strict mode rejected resolved date as it is in a different year"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_ae
    return-object v9
.end method

.method resolveYD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 11
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .line 572
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v5

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v5, v6, v7, v4}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    .line 573
    .local v3, "y":I
    sget-object v4, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p2, v4, :cond_3a

    .line 574
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    .line 575
    .local v0, "days":J
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v4, v0, v1, v5}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    .line 577
    .end local v0    # "days":J
    :cond_3a
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v5

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v5, v6, v7, v4}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v2

    .line 578
    .local v2, "doy":I
    invoke-virtual {p0, v3, v2}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4
.end method

.method resolveYMAA(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 21
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v14

    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v13}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v12

    .line 583
    .local v12, "y":I
    sget-object v13, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_7b

    .line 584
    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v8

    .line 585
    .local v8, "months":J
    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v10

    .line 586
    .local v10, "weeks":J
    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v6

    .line 587
    .local v6, "days":J
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v13

    sget-object v14, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v13, v8, v9, v14}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v13

    sget-object v14, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v13, v10, v11, v14}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v13

    sget-object v14, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v13, v6, v7, v14}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v13

    return-object v13

    .line 589
    .end local v6    # "days":J
    .end local v8    # "months":J
    .end local v10    # "weeks":J
    :cond_7b
    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v14

    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v13}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v5

    .line 590
    .local v5, "moy":I
    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v14

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v13}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    .line 591
    .local v3, "aw":I
    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v14

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v13}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v2

    .line 592
    .local v2, "ad":I
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v5, v13}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v13

    add-int/lit8 v14, v3, -0x1

    mul-int/lit8 v14, v14, 0x7

    add-int/lit8 v15, v2, -0x1

    add-int/2addr v14, v15

    int-to-long v14, v14

    sget-object v16, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface/range {v13 .. v16}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    .line 593
    .local v4, "date":Ljava/time/chrono/ChronoLocalDate;
    sget-object v13, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_101

    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v13}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v13

    if-eq v13, v5, :cond_101

    .line 594
    new-instance v13, Ljava/time/DateTimeException;

    const-string/jumbo v14, "Strict mode rejected resolved date as it is in a different month"

    invoke-direct {v13, v14}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 596
    :cond_101
    return-object v4
.end method

.method resolveYMAD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 21
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .line 600
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v2}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v14

    .line 601
    .local v14, "y":I
    sget-object v2, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_75

    .line 602
    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v16, 0x1

    move-wide/from16 v0, v16

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    .line 603
    .local v4, "months":J
    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v16, 0x1

    move-wide/from16 v0, v16

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v6

    .line 604
    .local v6, "weeks":J
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v16, 0x1

    move-wide/from16 v0, v16

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v8

    .line 605
    .local v8, "dow":J
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2, v3}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Ljava/time/chrono/AbstractChronology;->resolveAligned(Ljava/time/chrono/ChronoLocalDate;JJJ)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    return-object v2

    .line 607
    .end local v4    # "months":J
    .end local v6    # "weeks":J
    .end local v8    # "dow":J
    :cond_75
    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v2}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v13

    .line 608
    .local v13, "moy":I
    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v2}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v10

    .line 609
    .local v10, "aw":I
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v2}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v12

    .line 610
    .local v12, "dow":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13, v2}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    add-int/lit8 v3, v10, -0x1

    mul-int/lit8 v3, v3, 0x7

    int-to-long v0, v3

    move-wide/from16 v16, v0

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    move-wide/from16 v0, v16

    invoke-interface {v2, v0, v1, v3}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-static {v12}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v3

    invoke-static {v3}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v11

    .line 611
    .local v11, "date":Ljava/time/chrono/ChronoLocalDate;
    sget-object v2, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_108

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v11, v2}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    if-eq v2, v13, :cond_108

    .line 612
    new-instance v2, Ljava/time/DateTimeException;

    const-string/jumbo v3, "Strict mode rejected resolved date as it is in a different month"

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 614
    :cond_108
    return-object v11
.end method

.method resolveYMD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 19
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v11, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v12

    sget-object v11, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v11, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v14, v15, v11}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v10

    .line 553
    .local v10, "y":I
    sget-object v11, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_5f

    .line 554
    sget-object v11, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v8

    .line 555
    .local v8, "months":J
    sget-object v11, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    .line 556
    .local v2, "days":J
    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v11

    sget-object v12, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v11, v8, v9, v12}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v11

    sget-object v12, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v11, v2, v3, v12}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v11

    return-object v11

    .line 558
    .end local v2    # "days":J
    .end local v8    # "months":J
    :cond_5f
    sget-object v11, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v12

    sget-object v11, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v11, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v14, v15, v11}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v7

    .line 559
    .local v7, "moy":I
    sget-object v11, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v5

    .line 560
    .local v5, "domRange":Ljava/time/temporal/ValueRange;
    sget-object v11, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget-object v11, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v5, v12, v13, v11}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v4

    .line 561
    .local v4, "dom":I
    sget-object v11, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_b5

    .line 563
    :try_start_9d
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v7, v4}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;
    :try_end_a2
    .catch Ljava/time/DateTimeException; {:try_start_9d .. :try_end_a2} :catch_a4

    move-result-object v11

    return-object v11

    .line 564
    :catch_a4
    move-exception v6

    .line 565
    .local v6, "ex":Ljava/time/DateTimeException;
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v7, v11}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v11

    invoke-static {}, Ljava/time/temporal/TemporalAdjusters;->lastDayOfMonth()Ljava/time/temporal/TemporalAdjuster;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/time/chrono/ChronoLocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v11

    return-object v11

    .line 568
    .end local v6    # "ex":Ljava/time/DateTimeException;
    :cond_b5
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v7, v4}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v11

    return-object v11
.end method

.method resolveYearOfEra(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 16
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    const/4 v12, 0x0

    .line 514
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 515
    .local v6, "yoeLong":Ljava/lang/Long;
    if-eqz v6, :cond_b7

    .line 516
    sget-object v7, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 518
    .local v1, "eraLong":Ljava/lang/Long;
    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq p2, v7, :cond_48

    .line 519
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v7}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v10, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v7, v8, v9, v10}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v5

    .line 523
    .local v5, "yoe":I
    :goto_27
    if-eqz v1, :cond_51

    .line 524
    sget-object v7, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v7}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v10, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v7, v8, v9, v10}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v7

    invoke-virtual {p0, v7}, Ljava/time/chrono/AbstractChronology;->eraOf(I)Ljava/time/chrono/Era;

    move-result-object v2

    .line 525
    .local v2, "eraObj":Ljava/time/chrono/Era;
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2, v5}, Ljava/time/chrono/AbstractChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, p1, v7, v8, v9}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 548
    .end local v1    # "eraLong":Ljava/lang/Long;
    .end local v2    # "eraObj":Ljava/time/chrono/Era;
    .end local v5    # "yoe":I
    :cond_47
    :goto_47
    return-object v12

    .line 521
    .restart local v1    # "eraLong":Ljava/lang/Long;
    :cond_48
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toIntExact(J)I

    move-result v5

    .restart local v5    # "yoe":I
    goto :goto_27

    .line 527
    :cond_51
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_85

    .line 528
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v7}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v10, v11, v7}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v4

    .line 529
    .local v4, "year":I
    const/4 v7, 0x1

    invoke-virtual {p0, v4, v7}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 530
    .local v0, "chronoDate":Ljava/time/chrono/ChronoLocalDate;
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getEra()Ljava/time/chrono/Era;

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Ljava/time/chrono/AbstractChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, p1, v7, v8, v9}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto :goto_47

    .line 531
    .end local v0    # "chronoDate":Ljava/time/chrono/ChronoLocalDate;
    .end local v4    # "year":I
    :cond_85
    sget-object v7, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p2, v7, :cond_8f

    .line 534
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 536
    :cond_8f
    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->eras()Ljava/util/List;

    move-result-object v3

    .line 537
    .local v3, "eras":Ljava/util/List;, "Ljava/util/List<Ljava/time/chrono/Era;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a0

    .line 538
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v8, v5

    invoke-virtual {p0, p1, v7, v8, v9}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto :goto_47

    .line 540
    :cond_a0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/Era;

    .line 541
    .restart local v2    # "eraObj":Ljava/time/chrono/Era;
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2, v5}, Ljava/time/chrono/AbstractChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, p1, v7, v8, v9}, Ljava/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto :goto_47

    .line 545
    .end local v1    # "eraLong":Ljava/lang/Long;
    .end local v2    # "eraObj":Ljava/time/chrono/Era;
    .end local v3    # "eras":Ljava/util/List;, "Ljava/util/List<Ljava/time/chrono/Era;>;"
    .end local v5    # "yoe":I
    :cond_b7
    sget-object v7, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 546
    sget-object v7, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v7}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    sget-object v7, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v7, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v10, v11, v7}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    goto/16 :goto_47
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 748
    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 777
    invoke-virtual {p0}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 763
    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method
