.class public final synthetic Ljava/util/stream/-$$Lambda$r-8H_R_mZJjp9wd0XTLoEAHMNQ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$r-8H_R_mZJjp9wd0XTLoEAHMNQ0;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$r-8H_R_mZJjp9wd0XTLoEAHMNQ0;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$r-8H_R_mZJjp9wd0XTLoEAHMNQ0;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$r-8H_R_mZJjp9wd0XTLoEAHMNQ0;->INSTANCE:Ljava/util/stream/-$$Lambda$r-8H_R_mZJjp9wd0XTLoEAHMNQ0;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
