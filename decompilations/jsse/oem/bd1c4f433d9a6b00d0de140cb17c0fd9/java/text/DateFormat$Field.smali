.class public Ljava/text/DateFormat$Field;
.super Ljava/text/Format$Field;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final AM_PM:Ljava/text/DateFormat$Field;

.field public static final DAY_OF_MONTH:Ljava/text/DateFormat$Field;

.field public static final DAY_OF_WEEK:Ljava/text/DateFormat$Field;

.field public static final DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

.field public static final DAY_OF_YEAR:Ljava/text/DateFormat$Field;

.field public static final ERA:Ljava/text/DateFormat$Field;

.field public static final HOUR0:Ljava/text/DateFormat$Field;

.field public static final HOUR1:Ljava/text/DateFormat$Field;

.field public static final HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

.field public static final HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

.field public static final MILLISECOND:Ljava/text/DateFormat$Field;

.field public static final MINUTE:Ljava/text/DateFormat$Field;

.field public static final MONTH:Ljava/text/DateFormat$Field;

.field public static final SECOND:Ljava/text/DateFormat$Field;

.field public static final TIME_ZONE:Ljava/text/DateFormat$Field;

.field public static final WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

.field public static final WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

.field public static final YEAR:Ljava/text/DateFormat$Field;

.field private static final calendarToFieldMapping:[Ljava/text/DateFormat$Field;

.field private static final instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/text/DateFormat$Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x6744fc81f123e710L


# instance fields
.field private calendarField:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, -0x1

    .line 837
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/text/DateFormat$Field;->instanceMap:Ljava/util/Map;

    .line 841
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/text/DateFormat$Field;

    .line 840
    sput-object v0, Ljava/text/DateFormat$Field;->calendarToFieldMapping:[Ljava/text/DateFormat$Field;

    .line 931
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string/jumbo v1, "era"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    .line 936
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string/jumbo v1, "year"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    .line 941
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string/jumbo v1, "month"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 946
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 947
    const-string/jumbo v1, "day of month"

    const/4 v2, 0x5

    .line 946
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 953
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string/jumbo v1, "hour of day 1"

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    .line 959
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 960
    const-string/jumbo v1, "hour of day"

    const/16 v2, 0xb

    .line 959
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    .line 965
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string/jumbo v1, "minute"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    .line 970
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string/jumbo v1, "second"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    .line 975
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 976
    const-string/jumbo v1, "millisecond"

    const/16 v2, 0xe

    .line 975
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    .line 981
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 982
    const-string/jumbo v1, "day of week"

    const/4 v2, 0x7

    .line 981
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 987
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 988
    const-string/jumbo v1, "day of year"

    const/4 v2, 0x6

    .line 987
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 994
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string/jumbo v1, "day of week in month"

    .line 995
    const/16 v2, 0x8

    .line 994
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    .line 993
    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    .line 1000
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 1001
    const-string/jumbo v1, "week of year"

    const/4 v2, 0x3

    .line 1000
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 1006
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 1007
    const-string/jumbo v1, "week of month"

    const/4 v2, 0x4

    .line 1006
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 1013
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 1014
    const-string/jumbo v1, "am pm"

    const/16 v2, 0x9

    .line 1013
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    .line 1020
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string/jumbo v1, "hour 1"

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    .line 1026
    new-instance v0, Ljava/text/DateFormat$Field;

    .line 1027
    const-string/jumbo v1, "hour"

    const/16 v2, 0xa

    .line 1026
    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    .line 1032
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string/jumbo v1, "time zone"

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 831
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "calendarField"    # I

    .prologue
    .line 878
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 879
    iput p2, p0, Ljava/text/DateFormat$Field;->calendarField:I

    .line 880
    invoke-virtual {p0}, Ljava/text/DateFormat$Field;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/text/DateFormat$Field;

    if-ne v0, v1, :cond_18

    .line 881
    sget-object v0, Ljava/text/DateFormat$Field;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    if-ltz p2, :cond_18

    .line 884
    sget-object v0, Ljava/text/DateFormat$Field;->calendarToFieldMapping:[Ljava/text/DateFormat$Field;

    aput-object p0, v0, p2

    .line 887
    :cond_18
    return-void
.end method

.method public static ofCalendarField(I)Ljava/text/DateFormat$Field;
    .registers 4
    .param p0, "calendarField"    # I

    .prologue
    .line 859
    if-ltz p0, :cond_7

    .line 860
    sget-object v0, Ljava/text/DateFormat$Field;->calendarToFieldMapping:[Ljava/text/DateFormat$Field;

    array-length v0, v0

    .line 859
    if-lt p0, v0, :cond_21

    .line 861
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown Calendar constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_21
    sget-object v0, Ljava/text/DateFormat$Field;->calendarToFieldMapping:[Ljava/text/DateFormat$Field;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public getCalendarField()I
    .registers 2

    .prologue
    .line 900
    iget v0, p0, Ljava/text/DateFormat$Field;->calendarField:I

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 912
    invoke-virtual {p0}, Ljava/text/DateFormat$Field;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/text/DateFormat$Field;

    if-eq v1, v2, :cond_11

    .line 913
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v2, "subclass didn\'t correctly implement readResolve"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 916
    :cond_11
    sget-object v1, Ljava/text/DateFormat$Field;->instanceMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/text/DateFormat$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 917
    .local v0, "instance":Ljava/lang/Object;
    if-eqz v0, :cond_1e

    .line 918
    return-object v0

    .line 920
    :cond_1e
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v2, "unknown attribute name"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
