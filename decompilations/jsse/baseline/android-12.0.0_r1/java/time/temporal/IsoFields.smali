.class public final Ljava/time/temporal/IsoFields;
.super Ljava/lang/Object;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/temporal/IsoFields$Unit;,
        Ljava/time/temporal/IsoFields$Field;
    }
.end annotation


# static fields
.field public static final whitelist test-api DAY_OF_QUARTER:Ljava/time/temporal/TemporalField;

.field public static final whitelist test-api QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

.field public static final whitelist test-api QUARTER_YEARS:Ljava/time/temporal/TemporalUnit;

.field public static final whitelist test-api WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

.field public static final whitelist test-api WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

.field public static final whitelist test-api WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 194
    sget-object v0, Ljava/time/temporal/IsoFields$Field;->DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

    sput-object v0, Ljava/time/temporal/IsoFields;->DAY_OF_QUARTER:Ljava/time/temporal/TemporalField;

    .line 209
    sget-object v0, Ljava/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    sput-object v0, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    .line 239
    sget-object v0, Ljava/time/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    sput-object v0, Ljava/time/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    .line 253
    sget-object v0, Ljava/time/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    sput-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    .line 268
    sget-object v0, Ljava/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Ljava/time/temporal/IsoFields$Unit;

    sput-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    .line 276
    sget-object v0, Ljava/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Ljava/time/temporal/IsoFields$Unit;

    sput-object v0, Ljava/time/temporal/IsoFields;->QUARTER_YEARS:Ljava/time/temporal/TemporalUnit;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Not instantiable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
