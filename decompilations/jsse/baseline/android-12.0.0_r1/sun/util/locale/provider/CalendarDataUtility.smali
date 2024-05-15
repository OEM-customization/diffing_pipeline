.class public Lsun/util/locale/provider/CalendarDataUtility;
.super Ljava/lang/Object;
.source "CalendarDataUtility.java"


# static fields
.field private static final blacklist BUDDHIST_CALENDAR:Ljava/lang/String; = "buddhist"

.field private static final blacklist GREGORIAN_CALENDAR:Ljava/lang/String; = "gregorian"

.field private static final blacklist ISLAMIC_CALENDAR:Ljava/lang/String; = "islamic"

.field private static final blacklist JAPANESE_CALENDAR:Ljava/lang/String; = "japanese"

.field private static blacklist REST_OF_STYLES:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lsun/util/locale/provider/CalendarDataUtility;->REST_OF_STYLES:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x8001
        0x2
        0x8002
        0x4
        0x8004
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method private static blacklist getDateFormatSymbols(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;
    .registers 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 293
    invoke-static {p0}, Lsun/util/locale/provider/CalendarDataUtility;->normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "calendarType":Ljava/lang/String;
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 295
    const-string v2, "calendar"

    invoke-virtual {v1, v2, v0}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 296
    .local v1, "uLocale":Landroid/icu/util/ULocale;
    new-instance v2, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {v2, v1}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-object v2
.end method

.method private static blacklist getNames(Ljava/lang/String;IILjava/util/Locale;)[Ljava/lang/String;
    .registers 10
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 266
    invoke-static {p2}, Lsun/util/locale/provider/CalendarDataUtility;->toContext(I)I

    move-result v0

    .line 267
    .local v0, "context":I
    invoke-static {p2}, Lsun/util/locale/provider/CalendarDataUtility;->toWidth(I)I

    move-result v1

    .line 268
    .local v1, "width":I
    invoke-static {p0, p3}, Lsun/util/locale/provider/CalendarDataUtility;->getDateFormatSymbols(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v2

    .line 269
    .local v2, "symbols":Landroid/icu/text/DateFormatSymbols;
    sparse-switch p1, :sswitch_data_5e

    .line 288
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 286
    :sswitch_26
    invoke-virtual {v2}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 284
    :sswitch_2b
    invoke-virtual {v2, v0, v1}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 271
    :sswitch_30
    invoke-virtual {v2, v0, v1}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 273
    :sswitch_35
    packed-switch v1, :pswitch_data_70

    .line 281
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 275
    :pswitch_4f
    invoke-virtual {v2}, Landroid/icu/text/DateFormatSymbols;->getNarrowEras()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 279
    :pswitch_54
    invoke-virtual {v2}, Landroid/icu/text/DateFormatSymbols;->getEraNames()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 277
    :pswitch_59
    invoke-virtual {v2}, Landroid/icu/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_35
        0x2 -> :sswitch_30
        0x7 -> :sswitch_2b
        0x9 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_59
        :pswitch_54
        :pswitch_4f
    .end packed-switch
.end method

.method private static blacklist normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "requestID"    # Ljava/lang/String;

    .line 218
    const-string v0, "gregory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "iso8601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1e

    .line 220
    :cond_11
    const-string v0, "islamic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 221
    const-string v0, "islamic"

    .local v0, "type":Ljava/lang/String;
    goto :goto_20

    .line 223
    .end local v0    # "type":Ljava/lang/String;
    :cond_1c
    move-object v0, p0

    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_20

    .line 219
    .end local v0    # "type":Ljava/lang/String;
    :cond_1e
    :goto_1e
    const-string v0, "gregorian"

    .line 225
    .restart local v0    # "type":Ljava/lang/String;
    :goto_20
    return-object v0
.end method

.method public static blacklist retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;
    .registers 8
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "value"    # I
    .param p3, "style"    # I
    .param p4, "locale"    # Ljava/util/Locale;

    .line 107
    if-nez p1, :cond_36

    .line 109
    invoke-static {p0}, Lsun/util/locale/provider/CalendarDataUtility;->normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_46

    :cond_d
    goto :goto_2c

    :sswitch_e
    const-string v1, "islamic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_2d

    :sswitch_18
    const-string v1, "japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_2d

    :sswitch_22
    const-string v1, "buddhist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    goto :goto_2d

    :goto_2c
    const/4 v0, -0x1

    :goto_2d
    packed-switch v0, :pswitch_data_54

    goto :goto_36

    .line 119
    :pswitch_31
    add-int/lit16 p2, p2, 0xe7

    .line 120
    goto :goto_36

    .line 113
    :pswitch_34
    add-int/lit8 p2, p2, -0x1

    .line 126
    :cond_36
    :goto_36
    const/4 v0, 0x0

    if-gez p2, :cond_3a

    .line 127
    return-object v0

    .line 129
    :cond_3a
    invoke-static {p0, p1, p3, p4}, Lsun/util/locale/provider/CalendarDataUtility;->getNames(Ljava/lang/String;IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "names":[Ljava/lang/String;
    array-length v2, v1

    if-lt p2, v2, :cond_42

    .line 131
    return-object v0

    .line 133
    :cond_42
    aget-object v0, v1, p2

    return-object v0

    nop

    :sswitch_data_46
    .sparse-switch
        -0x5e3d124b -> :sswitch_22
        -0x2cddc04f -> :sswitch_18
        0x7ccb45c8 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_34
        :pswitch_34
        :pswitch_31
    .end packed-switch
.end method

.method public static blacklist retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;
    .registers 10
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 171
    if-nez p2, :cond_19

    .line 172
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 173
    .local v0, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Lsun/util/locale/provider/CalendarDataUtility;->REST_OF_STYLES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1d

    aget v4, v1, v3

    .line 174
    .local v4, "st":I
    invoke-static {p0, p1, v4, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 173
    .end local v4    # "st":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 178
    .end local v0    # "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_19
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 180
    .restart local v0    # "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1d
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x0

    goto :goto_26

    :cond_25
    move-object v1, v0

    :goto_26
    return-object v1
.end method

.method private static blacklist retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;
    .registers 11
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 231
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->getNames(Ljava/lang/String;IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 233
    .local v1, "skipped":I
    const/4 v2, 0x0

    .line 234
    .local v2, "offset":I
    if-nez p1, :cond_3c

    .line 236
    invoke-static {p0}, Lsun/util/locale/provider/CalendarDataUtility;->normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_66

    :cond_14
    goto :goto_32

    :sswitch_15
    const-string v5, "islamic"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v4, 0x1

    goto :goto_32

    :sswitch_1f
    const-string v5, "japanese"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v4, 0x2

    goto :goto_32

    :sswitch_29
    const-string v5, "buddhist"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v4, 0x0

    :goto_32
    packed-switch v4, :pswitch_data_74

    goto :goto_3c

    .line 242
    :pswitch_36
    const/16 v1, 0xe8

    .line 243
    const/16 v2, -0xe7

    .line 244
    goto :goto_3c

    .line 239
    :pswitch_3b
    const/4 v2, 0x1

    .line 249
    :cond_3c
    :goto_3c
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 250
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move v4, v1

    .local v4, "i":I
    :goto_42
    array-length v5, v0

    if-ge v4, v5, :cond_65

    .line 251
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 252
    goto :goto_62

    .line 255
    :cond_4e
    aget-object v5, v0, v4

    add-int v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_62

    .line 259
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v5

    .line 250
    :cond_62
    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 262
    .end local v4    # "i":I
    :cond_65
    return-object v3

    :sswitch_data_66
    .sparse-switch
        -0x5e3d124b -> :sswitch_29
        -0x2cddc04f -> :sswitch_1f
        0x7ccb45c8 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3b
        :pswitch_36
    .end packed-switch
.end method

.method public static blacklist retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "value"    # I
    .param p3, "style"    # I
    .param p4, "locale"    # Ljava/util/Locale;

    .line 155
    invoke-static {p0, p1, p2, p3, p4}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;
    .registers 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 202
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist toContext(I)I
    .registers 4
    .param p0, "style"    # I

    .line 322
    sparse-switch p0, :sswitch_data_1e

    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :sswitch_1a
    const/4 v0, 0x1

    return v0

    .line 326
    :sswitch_1c
    const/4 v0, 0x0

    return v0

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_1c
        0x4 -> :sswitch_1c
        0x8001 -> :sswitch_1a
        0x8002 -> :sswitch_1a
        0x8004 -> :sswitch_1a
    .end sparse-switch
.end method

.method private static blacklist toWidth(I)I
    .registers 4
    .param p0, "style"    # I

    .line 303
    sparse-switch p0, :sswitch_data_20

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :sswitch_1a
    const/4 v0, 0x2

    return v0

    .line 312
    :sswitch_1c
    const/4 v0, 0x1

    return v0

    .line 306
    :sswitch_1e
    const/4 v0, 0x0

    return v0

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1c
        0x4 -> :sswitch_1a
        0x8001 -> :sswitch_1e
        0x8002 -> :sswitch_1c
        0x8004 -> :sswitch_1a
    .end sparse-switch
.end method
