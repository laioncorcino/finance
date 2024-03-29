package db

import (
	"context"
)

type Querier interface {
	CreateAccount(ctx context.Context, arg CreateAccountParams) (Account, error)
	CreateCategory(ctx context.Context, arg CreateCategoryParams) (Category, error)
	CreateUser(ctx context.Context, arg CreateUserParams) (User, error)
	DeleteAccount(ctx context.Context, id int32) error
	DeleteCategory(ctx context.Context, id int32) error
	GetAccountById(ctx context.Context, id int32) (Account, error)
	GetAccounts(ctx context.Context, arg GetAccountsParams) ([]GetAccountsRow, error)
	GetAccountsGraph(ctx context.Context, arg GetAccountsGraphParams) (int64, error)
	GetAccountsReports(ctx context.Context, arg GetAccountsReportsParams) (int64, error)
	GetCategories(ctx context.Context, arg GetCategoriesParams) ([]Category, error)
	GetCategoryById(ctx context.Context, id int32) (Category, error)
	GetUserById(ctx context.Context, id int32) (User, error)
	GetUserByName(ctx context.Context, username string) (User, error)
	UpdateAccount(ctx context.Context, arg UpdateAccountParams) (Account, error)
	UpdateCategory(ctx context.Context, arg UpdateCategoryParams) (Category, error)
}

var _ Querier = (*Queries)(nil)
