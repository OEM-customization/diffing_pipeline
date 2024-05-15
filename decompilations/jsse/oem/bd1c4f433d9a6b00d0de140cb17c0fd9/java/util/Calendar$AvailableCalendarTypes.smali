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
.field private static final SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/Set;
    .registers 1

    sget-object v0, Ljava/util/Calendar$AvailableCalendarTypes;->SET:Ljava/util/Set;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2628
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 2629
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "gregory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2633
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Ljava/util/Calendar$AvailableCalendarTypes;->SET:Ljava/util/Set;

    .line 2625
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2636
    return-void
.end method
