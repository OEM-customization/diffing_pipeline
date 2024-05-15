.class public final synthetic Ljava/util/stream/-$$Lambda$_Ea_sNpqZAwihIOCRBaP7hHgWWI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$_Ea_sNpqZAwihIOCRBaP7hHgWWI;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$_Ea_sNpqZAwihIOCRBaP7hHgWWI;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$_Ea_sNpqZAwihIOCRBaP7hHgWWI;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$_Ea_sNpqZAwihIOCRBaP7hHgWWI;->INSTANCE:Ljava/util/stream/-$$Lambda$_Ea_sNpqZAwihIOCRBaP7hHgWWI;

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

    new-instance v0, Ljava/util/IntSummaryStatistics;

    invoke-direct {v0}, Ljava/util/IntSummaryStatistics;-><init>()V

    return-object v0
.end method
