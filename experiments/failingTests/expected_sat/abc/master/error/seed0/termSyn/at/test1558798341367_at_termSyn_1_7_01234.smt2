(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.at tmp_str0 tmp_int1) (str.len tmp_str0)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:23.846069  3308 UnaryAutomaton.cpp:325] 1
;I0818 17:37:23.846101  3308 UnaryAutomaton.cpp:326] 1
;I0818 17:37:23.846112  3308 UnaryAutomaton.cpp:327] 1
;F0818 17:37:23.851177  3308 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7fbb8fdecf5d  google::LogMessage::Fail()
;    @     0x7fbb8fdef513  google::LogMessage::SendToLog()
;    @     0x7fbb8fdecaeb  google::LogMessage::Flush()
;    @     0x7fbb8fdee45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fbb90410a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7fbb9045e992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7fbb9035d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbb9040f762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7fbb9045bdf0  Vlab::SMT::ToString::accept()
;    @     0x7fbb9035d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbb9040a7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fbb90457450  Vlab::SMT::Eq::accept()
;    @     0x7fbb9035d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbb90408878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7fbb904495ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fbb9044096e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fbb90455b5c  Vlab::SMT::And::accept()
;    @     0x7fbb9035d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbb90449a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fbb9043fd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fbb90453d2a  Vlab::SMT::Assert::accept()
;    @     0x7fbb9035d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbb90462699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fbb90453067  Vlab::SMT::Script::visit_children()
;    @     0x7fbb9035d9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fbb9043fb35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fbb9045303c  Vlab::SMT::Script::accept()
;    @     0x7fbb9035d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbb9043f7bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7fbb90343b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7fbb8f49f830  __libc_start_main
