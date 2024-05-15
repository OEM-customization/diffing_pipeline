.class final synthetic Ljava/time/-$Lambda$Kb7yteiMa_ottCEBOYEBjPQ4aes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic $INST$0:Ljava/time/-$Lambda$Kb7yteiMa_ottCEBOYEBjPQ4aes;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/time/OffsetDateTime;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/time/OffsetDateTime;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/time/OffsetDateTime;->-java_time_OffsetDateTime-mthref-0(Ljava/time/OffsetDateTime;Ljava/time/OffsetDateTime;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/time/-$Lambda$Kb7yteiMa_ottCEBOYEBjPQ4aes;

    invoke-direct {v0}, Ljava/time/-$Lambda$Kb7yteiMa_ottCEBOYEBjPQ4aes;-><init>()V

    sput-object v0, Ljava/time/-$Lambda$Kb7yteiMa_ottCEBOYEBjPQ4aes;->$INST$0:Ljava/time/-$Lambda$Kb7yteiMa_ottCEBOYEBjPQ4aes;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/time/-$Lambda$Kb7yteiMa_ottCEBOYEBjPQ4aes;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
