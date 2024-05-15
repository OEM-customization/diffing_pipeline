.class final enum Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
.super Ljava/lang/Enum;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SettingsParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;",
        ">;",
        "Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum greylist-max-o INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum greylist-max-o LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum greylist-max-o SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum greylist-max-o STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 2320
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    const-string v1, "SENSITIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2321
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    const-string v1, "INSENSITIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2322
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    const-string v1, "STRICT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2323
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    const-string v1, "LENIENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2319
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    sget-object v6, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v6, v1, v2

    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->$VALUES:[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2319
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 2319
    const-class v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    return-object v0
.end method

.method public static greylist-max-o values()[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    .registers 1

    .line 2319
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->$VALUES:[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-virtual {v0}, [Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 4
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2327
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 8
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2333
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    const/4 v2, 0x0

    if-eq v0, v1, :cond_19

    const/4 v3, 0x2

    if-eq v0, v3, :cond_15

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    goto :goto_20

    .line 2337
    :cond_11
    invoke-virtual {p1, v2}, Ljava/time/format/DateTimeParseContext;->setStrict(Z)V

    goto :goto_20

    .line 2336
    :cond_15
    invoke-virtual {p1, v1}, Ljava/time/format/DateTimeParseContext;->setStrict(Z)V

    goto :goto_20

    .line 2335
    :cond_19
    invoke-virtual {p1, v2}, Ljava/time/format/DateTimeParseContext;->setCaseSensitive(Z)V

    goto :goto_20

    .line 2334
    :cond_1d
    invoke-virtual {p1, v1}, Ljava/time/format/DateTimeParseContext;->setCaseSensitive(Z)V

    .line 2339
    :goto_20
    return p3
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 2345
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->ordinal()I

    move-result v0

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 2349
    const-string v0, "ParseStrict(false)"

    return-object v0

    .line 2351
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2348
    :cond_1a
    const-string v0, "ParseStrict(true)"

    return-object v0

    .line 2347
    :cond_1d
    const-string v0, "ParseCaseSensitive(false)"

    return-object v0

    .line 2346
    :cond_20
    const-string v0, "ParseCaseSensitive(true)"

    return-object v0
.end method
