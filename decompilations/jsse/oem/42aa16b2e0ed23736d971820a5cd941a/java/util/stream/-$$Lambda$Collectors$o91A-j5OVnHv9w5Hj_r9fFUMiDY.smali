.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$o91A-j5OVnHv9w5Hj_r9fFUMiDY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$o91A-j5OVnHv9w5Hj_r9fFUMiDY;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$Collectors$o91A-j5OVnHv9w5Hj_r9fFUMiDY;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$Collectors$o91A-j5OVnHv9w5Hj_r9fFUMiDY;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$Collectors$o91A-j5OVnHv9w5Hj_r9fFUMiDY;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$o91A-j5OVnHv9w5Hj_r9fFUMiDY;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/stream/Collectors$1OptionalBox;

    invoke-static {p1}, Ljava/util/stream/Collectors;->lambda$reducing$40(Ljava/util/stream/Collectors$1OptionalBox;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
