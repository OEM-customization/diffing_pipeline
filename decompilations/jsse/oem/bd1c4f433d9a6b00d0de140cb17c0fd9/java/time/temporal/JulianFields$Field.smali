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
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/temporal/JulianFields$Field;",
        ">;",
        "Ljava/time/temporal/TemporalField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/temporal/JulianFields$Field;

.field public static final enum JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

.field public static final enum MODIFIED_JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

.field public static final enum RATA_DIE:Ljava/time/temporal/JulianFields$Field;

.field private static final serialVersionUID:J = -0x681b1f35efa83fd4L


# instance fields
.field private final transient baseUnit:Ljava/time/temporal/TemporalUnit;

.field private final transient name:Ljava/lang/String;

.field private final transient offset:J

.field private final transient range:Ljava/time/temporal/ValueRange;

.field private final transient rangeUnit:Ljava/time/temporal/TemporalUnit;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 215
    new-instance v0, Ljava/time/temporal/JulianFields$Field;

    const-string/jumbo v1, "JULIAN_DAY"

    const-string/jumbo v3, "JulianDay"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v6, 0x253d8c

    invoke-direct/range {v0 .. v7}, Ljava/time/temporal/JulianFields$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;J)V

    sput-object v0, Ljava/time/temporal/JulianFields$Field;->JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    .line 216
    new-instance v4, Ljava/time/temporal/JulianFields$Field;

    const-string/jumbo v5, "MODIFIED_JULIAN_DAY"

    const-string/jumbo v7, "ModifiedJulianDay"

    sget-object v8, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v9, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v10, 0x9e8b

    move v6, v12

    invoke-direct/range {v4 .. v11}, Ljava/time/temporal/JulianFields$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;J)V

    sput-object v4, Ljava/time/temporal/JulianFields$Field;->MODIFIED_JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    .line 217
    new-instance v4, Ljava/time/temporal/JulianFields$Field;

    const-string/jumbo v5, "RATA_DIE"

    const-string/jumbo v7, "RataDie"

    sget-object v8, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v9, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v10, 0xaf93b

    move v6, v13

    invoke-direct/range {v4 .. v11}, Ljava/time/temporal/JulianFields$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;J)V

    sput-object v4, Ljava/time/temporal/JulianFields$Field;->RATA_DIE:Ljava/time/temporal/JulianFields$Field;

    .line 214
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/time/temporal/JulianFields$Field;

    sget-object v1, Ljava/time/temporal/JulianFields$Field;->JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/JulianFields$Field;->MODIFIED_JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    aput-object v1, v0, v12

    sget-object v1, Ljava/time/temporal/JulianFields$Field;->RATA_DIE:Ljava/time/temporal/JulianFields$Field;

    aput-object v1, v0, v13

    sput-object v0, Ljava/time/temporal/JulianFields$Field;->$VALUES:[Ljava/time/temporal/JulianFields$Field;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;J)V
    .registers 12
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "baseUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p5, "rangeUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p6, "offset"    # J

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 228
    iput-object p3, p0, Ljava/time/temporal/JulianFields$Field;->name:Ljava/lang/String;

    .line 229
    iput-object p4, p0, Ljava/time/temporal/JulianFields$Field;->baseUnit:Ljava/time/temporal/TemporalUnit;

    .line 230
    iput-object p5, p0, Ljava/time/temporal/JulianFields$Field;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    .line 231
    const-wide v0, -0x550a313cdaL

    add-long/2addr v0, p6

    const-wide v2, 0x550a1b48f7L

    add-long/2addr v2, p6

    invoke-static {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    iput-object v0, p0, Ljava/time/temporal/JulianFields$Field;->range:Ljava/time/temporal/ValueRange;

    .line 232
    iput-wide p6, p0, Ljava/time/temporal/JulianFields$Field;->offset:J

    .line 233
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/temporal/JulianFields$Field;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 214
    const-class v0, Ljava/time/temporal/JulianFields$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/JulianFields$Field;

    return-object v0
.end method

.method public static values()[Ljava/time/temporal/JulianFields$Field;
    .registers 1

    .prologue
    .line 214
    sget-object v0, Ljava/time/temporal/JulianFields$Field;->$VALUES:[Ljava/time/temporal/JulianFields$Field;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 8
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    invoke-virtual {p0}, Ljava/time/temporal/JulianFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-nez v0, :cond_31

    .line 284
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/temporal/JulianFields$Field;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_31
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    iget-wide v2, p0, Ljava/time/temporal/JulianFields$Field;->offset:J

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Ljava/time/temporal/JulianFields$Field;->baseUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 277
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    iget-wide v2, p0, Ljava/time/temporal/JulianFields$Field;->offset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Ljava/time/temporal/JulianFields$Field;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public isDateBased()Z
    .registers 2

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 264
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public isTimeBased()Z
    .registers 2

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public range()Ljava/time/temporal/ValueRange;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Ljava/time/temporal/JulianFields$Field;->range:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 5
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Ljava/time/temporal/JulianFields$Field;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 270
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_20
    invoke-virtual {p0}, Ljava/time/temporal/JulianFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 10
    .param p2, "partialTemporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/TemporalAccessor;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 294
    .local v2, "value":J
    invoke-static {p2}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v0

    .line 295
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p3, v1, :cond_1d

    .line 296
    iget-wide v4, p0, Ljava/time/temporal/JulianFields$Field;->offset:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Ljava/time/chrono/Chronology;->dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 298
    :cond_1d
    invoke-virtual {p0}, Ljava/time/temporal/JulianFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 299
    iget-wide v4, p0, Ljava/time/temporal/JulianFields$Field;->offset:J

    sub-long v4, v2, v4

    invoke-interface {v0, v4, v5}, Ljava/time/chrono/Chronology;->dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
    .registers 5

    .prologue
    .line 289
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/temporal/JulianFields$Field;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Ljava/time/temporal/JulianFields$Field;->name:Ljava/lang/String;

    return-object v0
.end method
