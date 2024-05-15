.class public final Lcom/android/okhttp/internal/http/HttpDate;
.super Ljava/lang/Object;
.source "HttpDate.java"


# static fields
.field private static final blacklist BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

.field private static final blacklist BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

.field private static final blacklist GMT:Ljava/util/TimeZone;

.field private static final blacklist STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 33
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/HttpDate;->GMT:Ljava/util/TimeZone;

    .line 39
    new-instance v0, Lcom/android/okhttp/internal/http/HttpDate$1;

    invoke-direct {v0}, Lcom/android/okhttp/internal/http/HttpDate$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    .line 51
    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    const-string v3, "EEE MMM d HH:mm:ss yyyy"

    const-string v4, "EEE, dd-MMM-yyyy HH:mm:ss z"

    const-string v5, "EEE, dd-MMM-yyyy HH-mm-ss z"

    const-string v6, "EEE, dd MMM yy HH:mm:ss z"

    const-string v7, "EEE dd-MMM-yyyy HH:mm:ss z"

    const-string v8, "EEE dd MMM yyyy HH:mm:ss z"

    const-string v9, "EEE dd-MMM-yyyy HH-mm-ss z"

    const-string v10, "EEE dd-MMM-yy HH:mm:ss z"

    const-string v11, "EEE dd MMM yy HH:mm:ss z"

    const-string v12, "EEE,dd-MMM-yy HH:mm:ss z"

    const-string v13, "EEE,dd-MMM-yyyy HH:mm:ss z"

    const-string v14, "EEE, dd-MM-yyyy HH:mm:ss z"

    const-string v15, "EEE MMM d yyyy HH:mm:ss z"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    .line 73
    array-length v0, v0

    new-array v0, v0, [Ljava/text/DateFormat;

    sput-object v0, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method static synthetic blacklist access$000()Ljava/util/TimeZone;
    .registers 1

    .line 31
    sget-object v0, Lcom/android/okhttp/internal/http/HttpDate;->GMT:Ljava/util/TimeZone;

    return-object v0
.end method

.method public static greylist format(Ljava/util/Date;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/util/Date;

    .line 118
    sget-object v0, Lcom/android/okhttp/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 12
    .param p0, "value"    # Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 80
    return-object v1

    .line 83
    :cond_8
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 84
    .local v0, "position":Ljava/text/ParsePosition;
    sget-object v3, Lcom/android/okhttp/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormat;

    invoke-virtual {v3, p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    .line 85
    .local v3, "result":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_25

    .line 88
    return-object v3

    .line 90
    :cond_25
    sget-object v4, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    monitor-enter v4

    .line 91
    const/4 v5, 0x0

    .local v5, "i":I
    :try_start_29
    sget-object v6, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    array-length v6, v6

    .local v6, "count":I
    :goto_2c
    if-ge v5, v6, :cond_5c

    .line 92
    sget-object v7, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aget-object v7, v7, v5

    .line 93
    .local v7, "format":Ljava/text/DateFormat;
    if-nez v7, :cond_49

    .line 94
    new-instance v8, Ljava/text/SimpleDateFormat;

    sget-object v9, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    aget-object v9, v9, v5

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v7, v8

    .line 97
    sget-object v8, Lcom/android/okhttp/internal/http/HttpDate;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 98
    sget-object v8, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aput-object v7, v8, v5

    .line 100
    :cond_49
    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 101
    invoke-virtual {v7, p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v8

    move-object v3, v8

    .line 102
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    if-eqz v8, :cond_59

    .line 108
    monitor-exit v4

    return-object v3

    .line 91
    .end local v7    # "format":Ljava/text/DateFormat;
    :cond_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 111
    .end local v5    # "i":I
    .end local v6    # "count":I
    :cond_5c
    monitor-exit v4

    .line 112
    return-object v1

    .line 111
    :catchall_5e
    move-exception v1

    monitor-exit v4
    :try_end_60
    .catchall {:try_start_29 .. :try_end_60} :catchall_5e

    throw v1
.end method
