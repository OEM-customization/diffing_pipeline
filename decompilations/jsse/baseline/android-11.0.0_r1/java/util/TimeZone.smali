.class public abstract Ljava/util/TimeZone;
.super Ljava/lang/Object;
.source "TimeZone.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TimeZone$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field private static final greylist-max-o GMT:Ljava/util/TimeZone;

.field public static final whitelist core-platform-api test-api LONG:I = 0x1

.field static final greylist-max-o NO_TIMEZONE:Ljava/util/TimeZone;

.field public static final whitelist core-platform-api test-api SHORT:I = 0x0

.field private static final greylist-max-o UTC:Ljava/util/TimeZone;

.field private static volatile greylist-max-o defaultTimeZone:Ljava/util/TimeZone; = null

.field static final whitelist serialVersionUID:J = 0x31b3e9f57744aca1L


# instance fields
.field private greylist-max-o ID:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 171
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "GMT"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    .line 172
    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v2, "UTC"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljava/util/TimeZone;->UTC:Ljava/util/TimeZone;

    .line 784
    const/4 v0, 0x0

    sput-object v0, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method private static greylist-max-o appendNumber(Ljava/lang/StringBuilder;II)V
    .registers 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "count"    # I
    .param p2, "value"    # I

    .line 459
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p1, v2

    if-ge v1, v2, :cond_15

    .line 461
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 463
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    return-void
.end method

.method public static greylist-max-o createGmtOffsetString(ZZI)Ljava/lang/String;
    .registers 8
    .param p0, "includeGmt"    # Z
    .param p1, "includeMinuteSeparator"    # Z
    .param p2, "offsetMillis"    # I

    .line 439
    const v0, 0xea60

    div-int v0, p2, v0

    .line 440
    .local v0, "offsetMinutes":I
    const/16 v1, 0x2b

    .line 441
    .local v1, "sign":C
    if-gez v0, :cond_c

    .line 442
    const/16 v1, 0x2d

    .line 443
    neg-int v0, v0

    .line 445
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 446
    .local v2, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1a

    .line 447
    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_1a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 450
    div-int/lit8 v3, v0, 0x3c

    const/4 v4, 0x2

    invoke-static {v2, v4, v3}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 451
    if-eqz p1, :cond_2a

    .line 452
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    :cond_2a
    rem-int/lit8 v3, v0, 0x3c

    invoke-static {v2, v4, v3}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 455
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized whitelist core-platform-api test-api getAvailableIDs()[Ljava/lang/String;
    .registers 2

    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    .line 677
    :try_start_3
    invoke-static {}, Llibcore/timezone/ZoneInfoDb;->getInstance()Llibcore/timezone/ZoneInfoDb;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/timezone/ZoneInfoDb;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    .line 677
    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized whitelist core-platform-api test-api getAvailableIDs(I)[Ljava/lang/String;
    .registers 3
    .param p0, "rawOffset"    # I

    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    .line 669
    :try_start_3
    invoke-static {}, Llibcore/timezone/ZoneInfoDb;->getInstance()Llibcore/timezone/ZoneInfoDb;

    move-result-object v1

    invoke-virtual {v1, p0}, Llibcore/timezone/ZoneInfoDb;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    .line 669
    .end local p0    # "rawOffset":I
    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static greylist-max-o getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 11
    .param p0, "id"    # Ljava/lang/String;

    .line 628
    sget-object v0, Ljava/util/TimeZone$NoImagePreloadHolder;->CUSTOM_ZONE_ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 629
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 630
    return-object v2

    .line 634
    :cond_e
    const/4 v1, 0x0

    .line 636
    .local v1, "minute":I
    const/4 v3, 0x1

    :try_start_10
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 637
    .local v4, "hour":I
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_28

    .line 638
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_27} :catch_6d

    move v1, v6

    .line 642
    :cond_28
    nop

    .line 644
    if-ltz v4, :cond_6c

    const/16 v6, 0x17

    if-gt v4, v6, :cond_6c

    if-ltz v1, :cond_6c

    const/16 v6, 0x3b

    if-le v1, v6, :cond_36

    goto :goto_6c

    .line 648
    :cond_36
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 649
    .local v2, "sign":C
    const v6, 0x36ee80

    mul-int/2addr v6, v4

    const v7, 0xea60

    mul-int/2addr v7, v1

    add-int/2addr v6, v7

    .line 650
    .local v6, "raw":I
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_48

    .line 651
    neg-int v6, v6

    .line 654
    :cond_48
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v3

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v3

    const-string v3, "GMT%c%02d:%02d"

    invoke-static {v7, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, "cleanId":Ljava/lang/String;
    new-instance v5, Ljava/util/SimpleTimeZone;

    invoke-direct {v5, v6, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object v5

    .line 645
    .end local v2    # "sign":C
    .end local v3    # "cleanId":Ljava/lang/String;
    .end local v6    # "raw":I
    :cond_6c
    :goto_6c
    return-object v2

    .line 640
    .end local v4    # "hour":I
    :catch_6d
    move-exception v2

    .line 641
    .local v2, "impossible":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public static whitelist core-platform-api test-api getDefault()Ljava/util/TimeZone;
    .registers 1

    .line 700
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    return-object v0
.end method

.method static declared-synchronized greylist-max-o getDefaultRef()Ljava/util/TimeZone;
    .registers 5

    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    .line 708
    :try_start_3
    sget-object v1, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    if-nez v1, :cond_36

    .line 709
    invoke-static {}, Ldalvik/system/RuntimeHooks;->getTimeZoneIdSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    .line 710
    .local v1, "tzGetter":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 711
    .local v2, "zoneName":Ljava/lang/String;
    :goto_15
    if-eqz v2, :cond_1c

    .line 712
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 714
    :cond_1c
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_3a

    if-eqz v3, :cond_30

    .line 717
    :cond_24
    :try_start_24
    const-string v3, "/etc/timezone"

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2a} :catch_2c
    .catchall {:try_start_24 .. :try_end_2a} :catchall_3a

    move-object v2, v3

    .line 722
    goto :goto_30

    .line 718
    :catch_2c
    move-exception v3

    .line 721
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2d
    const-string v4, "GMT"

    move-object v2, v4

    .line 724
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_30
    :goto_30
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    sput-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    .line 726
    .end local v1    # "tzGetter":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    .end local v2    # "zoneName":Ljava/lang/String;
    :cond_36
    sget-object v1, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_3a

    monitor-exit v0

    return-object v1

    .line 707
    :catchall_3a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native greylist-max-o getSystemGMTOffsetID()Ljava/lang/String;
.end method

.method private static native greylist-max-o getSystemTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static declared-synchronized whitelist core-platform-api test-api getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 5
    .param p0, "id"    # Ljava/lang/String;

    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    .line 562
    if-eqz p0, :cond_61

    .line 567
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_30

    .line 568
    const-string v1, "GMT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 569
    sget-object v1, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_5f

    monitor-exit v0

    return-object v1

    .line 571
    :cond_1e
    :try_start_1e
    const-string v1, "UTC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 572
    sget-object v1, Ljava/util/TimeZone;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_5f

    monitor-exit v0

    return-object v1

    .line 577
    :cond_30
    const/4 v1, 0x0

    .line 579
    .local v1, "zone":Ljava/util/TimeZone;
    :try_start_31
    invoke-static {}, Llibcore/timezone/ZoneInfoDb;->getInstance()Llibcore/timezone/ZoneInfoDb;

    move-result-object v3

    invoke-virtual {v3, p0}, Llibcore/timezone/ZoneInfoDb;->makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    move-result-object v3
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_39} :catch_3b
    .catchall {:try_start_31 .. :try_end_39} :catchall_5f

    move-object v1, v3

    .line 581
    goto :goto_3c

    .line 580
    :catch_3b
    move-exception v3

    .line 584
    :goto_3c
    if-nez v1, :cond_51

    :try_start_3e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_51

    const-string v2, "GMT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 585
    invoke-static {p0}, Ljava/util/TimeZone;->getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    move-object v1, v2

    .line 589
    :cond_51
    if-eqz v1, :cond_55

    move-object v2, v1

    goto :goto_5d

    :cond_55
    sget-object v2, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TimeZone;
    :try_end_5d
    .catchall {:try_start_3e .. :try_end_5d} :catchall_5f

    :goto_5d
    monitor-exit v0

    return-object v2

    .line 561
    .end local v1    # "zone":Ljava/util/TimeZone;
    .end local p0    # "id":Ljava/lang/String;
    :catchall_5f
    move-exception p0

    goto :goto_69

    .line 563
    .restart local p0    # "id":Ljava/lang/String;
    :cond_61
    :try_start_61
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "id == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_5f

    .line 561
    .end local p0    # "id":Ljava/lang/String;
    :goto_69
    monitor-exit v0

    throw p0
.end method

.method public static whitelist core-platform-api test-api getTimeZone(Ljava/time/ZoneId;)Ljava/util/TimeZone;
    .registers 5
    .param p0, "zoneId"    # Ljava/time/ZoneId;

    .line 602
    invoke-virtual {p0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "tzid":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 604
    .local v1, "c":C
    const/16 v2, 0x2b

    if-eq v1, v2, :cond_20

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_12

    goto :goto_20

    .line 606
    :cond_12
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_31

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    .line 607
    const-string v0, "UTC"

    goto :goto_31

    .line 605
    :cond_20
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    :cond_31
    :goto_31
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized whitelist core-platform-api test-api setDefault(Ljava/util/TimeZone;)V
    .registers 6
    .param p0, "timeZone"    # Ljava/util/TimeZone;

    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    .line 741
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 742
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_15

    .line 743
    new-instance v2, Ljava/util/PropertyPermission;

    const-string v3, "user.timezone"

    const-string v4, "write"

    invoke-direct {v2, v3, v4}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 746
    :cond_15
    const/4 v2, 0x0

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TimeZone;

    goto :goto_20

    :cond_1f
    move-object v3, v2

    :goto_20
    sput-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    .line 748
    invoke-static {v2}, Landroid/icu/util/TimeZone;->setICUDefault(Landroid/icu/util/TimeZone;)V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    .line 749
    monitor-exit v0

    return-void

    .line 740
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "timeZone":Ljava/util/TimeZone;
    :catchall_27
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 3

    .line 773
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    .line 774
    .local v0, "other":Ljava/util/TimeZone;
    iget-object v1, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    iput-object v1, v0, Ljava/util/TimeZone;->ID:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_a} :catch_b

    .line 775
    return-object v0

    .line 776
    .end local v0    # "other":Ljava/util/TimeZone;
    :catch_b
    move-exception v0

    .line 777
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api getDSTSavings()I
    .registers 2

    .line 494
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 495
    const v0, 0x36ee80

    return v0

    .line 497
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist core-platform-api test-api getDisplayName()Ljava/lang/String;
    .registers 4

    .line 324
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    .line 325
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 324
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 344
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getDisplayName(ZI)Ljava/lang/String;
    .registers 4
    .param p1, "daylight"    # Z
    .param p2, "style"    # I

    .line 372
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    .line 373
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 372
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;
    .registers 11
    .param p1, "daylightTime"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 389
    const/4 v0, 0x1

    if-eqz p2, :cond_25

    if-ne p2, v0, :cond_e

    .line 396
    if-eqz p1, :cond_a

    .line 397
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_c

    .line 398
    :cond_a
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    :goto_c
    nop

    .line 399
    .local v1, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_2e

    .line 401
    .end local v1    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_25
    if-eqz p1, :cond_2a

    .line 392
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_2c

    .line 393
    :cond_2a
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    :goto_2c
    nop

    .line 394
    .restart local v1    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    nop

    .line 403
    :goto_2e
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "canonicalID":Ljava/lang/String;
    if-eqz v2, :cond_47

    .line 405
    invoke-static {p3}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v3

    .line 406
    .local v3, "names":Landroid/icu/text/TimeZoneNames;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 407
    .local v4, "now":J
    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v6

    .line 408
    .local v6, "displayName":Ljava/lang/String;
    if-eqz v6, :cond_47

    .line 409
    return-object v6

    .line 415
    .end local v3    # "names":Landroid/icu/text/TimeZoneNames;
    .end local v4    # "now":J
    .end local v6    # "displayName":Ljava/lang/String;
    :cond_47
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    .line 416
    .local v3, "offsetMillis":I
    if-eqz p1, :cond_52

    .line 417
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    add-int/2addr v3, v4

    .line 419
    :cond_52
    invoke-static {v0, v0, v3}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getID()Ljava/lang/String;
    .registers 2

    .line 291
    iget-object v0, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api getOffset(IIIIII)I
.end method

.method public whitelist core-platform-api test-api getOffset(J)I
    .registers 5
    .param p1, "date"    # J

    .line 218
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 219
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 221
    :cond_15
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method greylist-max-o getOffsets(J[I)I
    .registers 7
    .param p1, "date"    # J
    .param p3, "offsets"    # [I

    .line 241
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    .line 242
    .local v0, "rawoffset":I
    const/4 v1, 0x0

    .line 243
    .local v1, "dstoffset":I
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 244
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    .line 246
    :cond_14
    if-eqz p3, :cond_1c

    .line 247
    const/4 v2, 0x0

    aput v0, p3, v2

    .line 248
    const/4 v2, 0x1

    aput v1, p3, v2

    .line 250
    :cond_1c
    add-int v2, v0, v1

    return v2
.end method

.method public abstract whitelist core-platform-api test-api getRawOffset()I
.end method

.method public whitelist core-platform-api test-api hasSameRules(Ljava/util/TimeZone;)Z
    .registers 4
    .param p1, "other"    # Ljava/util/TimeZone;

    .line 761
    if-eqz p1, :cond_18

    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-ne v0, v1, :cond_18

    .line 762
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 761
    :goto_19
    return v0
.end method

.method public abstract whitelist core-platform-api test-api inDaylightTime(Ljava/util/Date;)Z
.end method

.method public whitelist core-platform-api test-api observesDaylightTime()Z
    .registers 2

    .line 536
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method public whitelist core-platform-api test-api setID(Ljava/lang/String;)V
    .registers 3
    .param p1, "ID"    # Ljava/lang/String;

    .line 301
    if-eqz p1, :cond_5

    .line 304
    iput-object p1, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    .line 305
    return-void

    .line 302
    :cond_5
    const/4 v0, 0x0

    throw v0
.end method

.method public abstract whitelist core-platform-api test-api setRawOffset(I)V
.end method

.method public whitelist core-platform-api test-api toZoneId()Ljava/time/ZoneId;
    .registers 3

    .line 621
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/time/ZoneId;->SHORT_IDS:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/time/ZoneId;->of(Ljava/lang/String;Ljava/util/Map;)Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api useDaylightTime()Z
.end method
