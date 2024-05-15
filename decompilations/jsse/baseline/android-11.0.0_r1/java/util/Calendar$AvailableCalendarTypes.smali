.class Ljava/util/Calendar$AvailableCalendarTypes;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvailableCalendarTypes"
.end annotation


# static fields
.field private static final greylist-max-o SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2633
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 2634
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "gregory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2638
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Ljava/util/Calendar$AvailableCalendarTypes;->SET:Ljava/util/Set;

    .line 2639
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2641
    return-void
.end method

.method static synthetic blacklist access$000()Ljava/util/Set;
    .registers 1

    .line 2630
    sget-object v0, Ljava/util/Calendar$AvailableCalendarTypes;->SET:Ljava/util/Set;

    return-object v0
.end method
