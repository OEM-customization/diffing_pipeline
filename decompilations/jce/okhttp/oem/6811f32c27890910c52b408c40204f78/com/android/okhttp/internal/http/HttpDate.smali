.class public final Lcom/android/okhttp/internal/http/HttpDate;
.super Ljava/lang/Object;
.source "HttpDate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/HttpDate$1;
    }
.end annotation


# static fields
.field private static final BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

.field private static final BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

.field private static final GMT:Ljava/util/TimeZone;

.field private static final STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/TimeZone;
    .registers 1

    sget-object v0, Lcom/android/okhttp/internal/http/HttpDate;->GMT:Ljava/util/TimeZone;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/HttpDate;->GMT:Ljava/util/TimeZone;

    .line 38
    new-instance v0, Lcom/android/okhttp/internal/http/HttpDate$1;

    invoke-direct {v0}, Lcom/android/okhttp/internal/http/HttpDate$1;-><init>()V

    .line 37
    sput-object v0, Lcom/android/okhttp/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    .line 49
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    .line 51
    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "EEE MMM d HH:mm:ss yyyy"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "EEE, dd-MMM-yyyy HH:mm:ss z"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "EEE, dd-MMM-yyyy HH-mm-ss z"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "EEE, dd MMM yy HH:mm:ss z"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "EEE dd-MMM-yyyy HH:mm:ss z"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "EEE dd MMM yyyy HH:mm:ss z"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "EEE dd-MMM-yyyy HH-mm-ss z"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "EEE dd-MMM-yy HH:mm:ss z"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "EEE dd MMM yy HH:mm:ss z"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "EEE,dd-MMM-yy HH:mm:ss z"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "EEE,dd-MMM-yyyy HH:mm:ss z"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "EEE, dd-MM-yyyy HH:mm:ss z"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "EEE MMM d yyyy HH:mm:ss z"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 49
    sput-object v0, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/text/DateFormat;

    .line 71
    sput-object v0, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/util/Date;

    .prologue
    .line 114
    sget-object v0, Lcom/android/okhttp/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 10
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_9

    .line 77
    return-object v8

    .line 80
    :cond_9
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 81
    .local v3, "position":Ljava/text/ParsePosition;
    sget-object v5, Lcom/android/okhttp/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/DateFormat;

    invoke-virtual {v5, p0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v4

    .line 82
    .local v4, "result":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_25

    .line 85
    return-object v4

    .line 87
    :cond_25
    sget-object v6, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    monitor-enter v6

    .line 88
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_29
    sget-object v5, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    array-length v0, v5

    .local v0, "count":I
    :goto_2c
    if-ge v2, v0, :cond_5b

    .line 89
    sget-object v5, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aget-object v1, v5, v2

    .line 90
    .local v1, "format":Ljava/text/DateFormat;
    if-nez v1, :cond_48

    .line 91
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "format":Ljava/text/DateFormat;
    sget-object v5, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    aget-object v5, v5, v2

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 94
    .restart local v1    # "format":Ljava/text/DateFormat;
    sget-object v5, Lcom/android/okhttp/internal/http/HttpDate;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 95
    sget-object v5, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aput-object v1, v5, v2

    .line 97
    :cond_48
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 98
    invoke-virtual {v1, p0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v4

    .line 99
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I
    :try_end_53
    .catchall {:try_start_29 .. :try_end_53} :catchall_5d

    move-result v5

    if-eqz v5, :cond_58

    monitor-exit v6

    .line 105
    return-object v4

    .line 88
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .end local v1    # "format":Ljava/text/DateFormat;
    :cond_5b
    monitor-exit v6

    .line 109
    return-object v8

    .line 87
    .end local v0    # "count":I
    :catchall_5d
    move-exception v5

    monitor-exit v6

    throw v5
.end method
