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
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;",
        ">;",
        "Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2317
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    const-string/jumbo v1, "SENSITIVE"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2318
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    const-string/jumbo v1, "INSENSITIVE"

    invoke-direct {v0, v1, v3}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2319
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    const-string/jumbo v1, "STRICT"

    invoke-direct {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2320
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    const-string/jumbo v1, "LENIENT"

    invoke-direct {v0, v1, v5}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2316
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v1, v0, v3

    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v1, v0, v4

    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v1, v0, v5

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->$VALUES:[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 2316
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2316
    const-class v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    return-object v0
.end method

.method public static values()[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    .registers 1

    .prologue
    .line 2316
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->$VALUES:[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    return-object v0
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 4
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2324
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 7
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2330
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 2336
    :goto_9
    return p3

    .line 2331
    :pswitch_a
    invoke-virtual {p1, v2}, Ljava/time/format/DateTimeParseContext;->setCaseSensitive(Z)V

    goto :goto_9

    .line 2332
    :pswitch_e
    invoke-virtual {p1, v1}, Ljava/time/format/DateTimeParseContext;->setCaseSensitive(Z)V

    goto :goto_9

    .line 2333
    :pswitch_12
    invoke-virtual {p1, v2}, Ljava/time/format/DateTimeParseContext;->setStrict(Z)V

    goto :goto_9

    .line 2334
    :pswitch_16
    invoke-virtual {p1, v1}, Ljava/time/format/DateTimeParseContext;->setStrict(Z)V

    goto :goto_9

    .line 2330
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2342
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 2348
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2343
    :pswitch_10
    const-string/jumbo v0, "ParseCaseSensitive(true)"

    return-object v0

    .line 2344
    :pswitch_14
    const-string/jumbo v0, "ParseCaseSensitive(false)"

    return-object v0

    .line 2345
    :pswitch_18
    const-string/jumbo v0, "ParseStrict(true)"

    return-object v0

    .line 2346
    :pswitch_1c
    const-string/jumbo v0, "ParseStrict(false)"

    return-object v0

    .line 2342
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
    .end packed-switch
.end method
