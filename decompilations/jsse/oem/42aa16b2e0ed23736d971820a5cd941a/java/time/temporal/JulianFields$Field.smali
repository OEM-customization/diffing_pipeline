.class final enum Ljava/time/temporal/JulianFields$Field;
.super Ljava/lang/Enum;
.source "JulianFields.java"

# interfaces
.implements Ljava/time/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/JulianFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/temporal/JulianFields$Field;",
        ">;",
        "Ljava/time/temporal/TemporalField;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/temporal/JulianFields$Field;

.field public static final enum greylist-max-o JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

.field public static final enum greylist-max-o MODIFIED_JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

.field public static final enum greylist-max-o RATA_DIE:Ljava/time/temporal/JulianFields$Field;

.field private static final whitelist serialVersionUID:J = -0x681b1f35efa83fd4L


# instance fields
.field private final transient greylist-max-o baseUnit:Ljava/time/temporal/TemporalUnit;

.field private final transient greylist-max-o name:Ljava/lang/String;

.field private final transient greylist-max-o offset:J

.field private final transient greylist-max-o range:Ljava/time/temporal/ValueRange;

.field private final transient greylist-max-o rangeUnit:Ljava/time/temporal/TemporalUnit;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 17

    .line 215
    new-instance v8, Ljava/time/temporal/JulianFields$Field;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-string v1, "JULIAN_DAY"

    const/4 v2, 0x0

    const-string v3, "JulianDay"

    const-wide/32 v6, 0x253d8c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/time/temporal/JulianFields$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;J)V

    sput-object v8, Ljava/time/temporal/JulianFields$Field;->JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    .line 216
    new-instance v0, Ljava/time/temporal/JulianFields$Field;

    sget-object v13, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v14, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-string v10, "MODIFIED_JULIAN_DAY"

    const/4 v11, 0x1

    const-string v12, "ModifiedJulianDay"

    const-wide/32 v15, 0x9e8b

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Ljava/time/temporal/JulianFields$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;J)V

    sput-object v0, Ljava/time/temporal/JulianFields$Field;->MODIFIED_JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    .line 217
    new-instance v0, Ljava/time/temporal/JulianFields$Field;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-string v2, "RATA_DIE"

    const/4 v3, 0x2

    const-string v4, "RataDie"

    const-wide/32 v7, 0xaf93b

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/time/temporal/JulianFields$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;J)V

    sput-object v0, Ljava/time/temporal/JulianFields$Field;->RATA_DIE:Ljava/time/temporal/JulianFields$Field;

    .line 214
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/time/temporal/JulianFields$Field;

    sget-object v2, Ljava/time/temporal/JulianFields$Field;->JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/JulianFields$Field;->MODIFIED_JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Ljava/time/temporal/JulianFields$Field;->$VALUES:[Ljava/time/temporal/JulianFields$Field;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;J)V
    .registers 10
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "baseUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p5, "rangeUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p6, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/temporal/TemporalUnit;",
            "Ljava/time/temporal/TemporalUnit;",
            "J)V"
        }
    .end annotation

    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 228
    iput-object p3, p0, Ljava/time/temporal/JulianFields$Field;->name:Ljava/lang/String;

    .line 229
    iput-object p4, p0, Ljava/time/temporal/JulianFields$Field;->baseUnit:Ljava/time/temporal/TemporalUnit;

    .line 230
    iput-object p5, p0, Ljava/time/temporal/JulianFields$Field;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    .line 231
    const-wide p1, -0x550a313cdaL

    add-long/2addr p1, p6

    const-wide v0, 0x550a1b48f7L

    add-long/2addr v0, p6

    invoke-static {p1, p2, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object p1

    iput-object p1, p0, Ljava/time/temporal/JulianFields$Field;->range:Ljava/time/temporal/ValueRange;

    .line 232
    iput-wide p6, p0, Ljava/time/temporal/JulianFields$Field;->offset:J

    .line 233
    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Ljava/time/temporal/JulianFields$Field;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 214
    const-class v0, Ljava/time/temporal/JulianFields$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/JulianFields$Field;

    return-object v0
.end method

.method public static greylist-max-o values()[Ljava/time/temporal/JulianFields$Field;
    .registers 1

    .line 214
    sget-object v0, Ljava/time/temporal/JulianFields$Field;->$VALUES:[Ljava/time/temporal/JulianFields$Field;

    invoke-virtual {v0}, [Ljava/time/temporal/JulianFields$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/temporal/JulianFields$Field;

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 7
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 283
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    invoke-virtual {p0}, Ljava/time/temporal/JulianFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 286
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    iget-wide v1, p0, Ljava/time/temporal/JulianFields$Field;->offset:J

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    .line 284
    :cond_17
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/time/temporal/JulianFields$Field;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 238
    iget-object v0, p0, Ljava/time/temporal/JulianFields$Field;->baseUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 277
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    iget-wide v2, p0, Ljava/time/temporal/JulianFields$Field;->offset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 243
    iget-object v0, p0, Ljava/time/temporal/JulianFields$Field;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist core-platform-api test-api isDateBased()Z
    .registers 2

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist core-platform-api test-api isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 264
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isTimeBased()Z
    .registers 2

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api range()Ljava/time/temporal/ValueRange;
    .registers 2

    .line 258
    iget-object v0, p0, Ljava/time/temporal/JulianFields$Field;->range:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public whitelist core-platform-api test-api rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 5
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 269
    invoke-virtual {p0, p1}, Ljava/time/temporal/JulianFields$Field;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 272
    invoke-virtual {p0}, Ljava/time/temporal/JulianFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 270
    :cond_b
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 9
    .param p2, "partialTemporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/TemporalAccessor;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 293
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 294
    .local v0, "value":J
    invoke-static {p2}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v2

    .line 295
    .local v2, "chrono":Ljava/time/chrono/Chronology;
    sget-object v3, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p3, v3, :cond_1d

    .line 296
    iget-wide v3, p0, Ljava/time/temporal/JulianFields$Field;->offset:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Ljava/time/chrono/Chronology;->dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v3

    return-object v3

    .line 298
    :cond_1d
    invoke-virtual {p0}, Ljava/time/temporal/JulianFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v3

    invoke-virtual {v3, v0, v1, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 299
    iget-wide v3, p0, Ljava/time/temporal/JulianFields$Field;->offset:J

    sub-long v3, v0, v3

    invoke-interface {v2, v3, v4}, Ljava/time/chrono/Chronology;->dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic whitelist core-platform-api test-api resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
    .registers 4

    .line 214
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/temporal/JulianFields$Field;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 305
    iget-object v0, p0, Ljava/time/temporal/JulianFields$Field;->name:Ljava/lang/String;

    return-object v0
.end method
