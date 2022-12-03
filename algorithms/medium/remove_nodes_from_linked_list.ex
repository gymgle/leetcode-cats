# Definition for singly-linked list.
#
# defmodule ListNode do
#   @type t :: %__MODULE__{
#           val: integer,
#           next: ListNode.t() | nil
#         }
#   defstruct val: 0, next: nil
# end

defmodule Solution do
  @spec remove_nodes(head :: ListNode.t() | nil) :: ListNode.t() | nil
  def remove_nodes(head) do
    if head.next == nil do
      head
    else
      rest = remove_nodes(head.next)

      if head.val < rest.val do
        rest
      else
        %{head | next: rest}
      end
    end
  end
end
