package db

import (
	"time"
)

type Account struct {
	ID          int32     `json:"id"`
	Title       string    `json:"title"`
	Type        string    `json:"type"`
	Description string    `json:"description"`
	Value       int32     `json:"value"`
	Date        time.Time `json:"date"`
	CreatedAt   time.Time `json:"created_at"`
	UserID      int32     `json:"user_id"`
	CategoryID  int32     `json:"category_id"`
}

type Category struct {
	ID          int32     `json:"id"`
	Title       string    `json:"title"`
	Type        string    `json:"type"`
	Description string    `json:"description"`
	CreatedAt   time.Time `json:"created_at"`
	UserID      int32     `json:"user_id"`
}

type User struct {
	ID        int32     `json:"id"`
	Username  string    `json:"username"`
	Password  string    `json:"password"`
	Email     string    `json:"email"`
	CreatedAt time.Time `json:"created_at"`
}
